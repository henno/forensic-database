  import { readFileSync, writeFileSync } from "fs";
import { parsePhoneNumber, formatIncompletePhoneNumber } from 'libphonenumber-js';

  const rawData = readFileSync("./ajalugu.json", "utf-8");
  const data = JSON.parse(rawData);

  const cutoffMillis = new Date("2025-06-05T03:59:59+03:00").getTime();
  const maxCutoffMillis = new Date("2025-07-07T23:59:59+03:00").getTime();

  // Load and parse calls.csv
  const callsData = readFileSync("./calls.csv", "utf-8");
  const callLines = callsData.split('\n').slice(1).filter(line => line.trim()); // Skip header

  interface Call {
    name: string;
    phone: string;
    startTime: Date;
    endTime: Date;
    duration: number;
    type: string;
  }

  function parseCallsCSV(): Call[] {
    const calls: Call[] = [];
    
    for (const line of callLines) {
      const parts = line.split(',');
      if (parts.length < 9) continue; // Need at least 9 columns
      
      const name = parts[0].replace(/"/g, '');
      const phone = parts[1].replace(/"/g, '');
      const dateStr = parts[2].replace(/"/g, '');
      const type = parts[3].replace(/"/g, '');
      // Skip parts[4], parts[5], parts[6] (HH,MM,SS breakdown)
      const durationSecs = parseInt(parts[7]); // Duration(secs) column
      
      // Parse date string like "23.06.25 18:03:15" 
      const [datePart, timePart] = dateStr.split(' ');
      const [day, month, year] = datePart.split('.');
      const [hour, minute, second] = timePart.split(':');
      
      const startTime = new Date(2000 + parseInt(year), parseInt(month) - 1, parseInt(day), 
                                 parseInt(hour), parseInt(minute), parseInt(second));
      const endTime = new Date(startTime.getTime() + durationSecs * 1000);
      
      calls.push({
        name: name || phone,
        phone,
        startTime,
        endTime,
        duration: durationSecs,
        type
      });
    }
    
    return calls.sort((a, b) => a.startTime.getTime() - b.startTime.getTime());
  }

  const calls = parseCallsCSV(); // Already sorted oldest first in the function

  function formatTime(usec: number): string {
    const millis = Math.floor(usec / 1000);
    const d = new Date(millis);
    
    // Manuaalne kuupäeva ja kellaaja vormindamine
    const day = d.getDate().toString().padStart(2, '0');
    const month = (d.getMonth() + 1).toString().padStart(2, '0');
    const year = d.getFullYear();
    const hours = d.getHours().toString().padStart(2, '0');
    const minutes = d.getMinutes().toString().padStart(2, '0');
    const seconds = d.getSeconds().toString().padStart(2, '0');
    
    return `${day}.${month}.${year}, ${hours}:${minutes}:${seconds}`;
  }

  function highlightDomain(url: string): string {
    try {
      const u = new URL(url);
      const hostname = u.hostname;
      const isWWW = hostname.startsWith("www.");
      const domain = isWWW ? hostname.slice(4) : hostname;
      const prefix = `${u.protocol}//` + (isWWW ? `<span style="font-weight:normal">www.</span>` : "");
      return `${prefix}<strong>${domain}</strong>${u.pathname}${u.search}`;
    } catch {
      return url;
    }
  }

  function formatDuration(seconds: number): string {
    const hours = Math.floor(seconds / 3600);
    const minutes = Math.floor((seconds % 3600) / 60);
    const secs = seconds % 60;
    return `${hours.toString().padStart(2, '0')}:${minutes.toString().padStart(2, '0')}:${secs.toString().padStart(2, '0')}`;
  }

  function formatPhoneNumber(phone: string): string {
    try {
      // First try to parse with + prefix
      let numberToParse = phone;
      if (!phone.startsWith('+') && phone.length >= 10) {
        numberToParse = '+' + phone;
      }
      
      // Try to parse the phone number
      const phoneNumber = parsePhoneNumber(numberToParse);
      if (phoneNumber && phoneNumber.isValid()) {
        return phoneNumber.formatInternational();
      }
      
      // If parsing fails, try formatIncompletePhoneNumber as fallback
      return formatIncompletePhoneNumber(numberToParse);
    } catch (error) {
      // If all else fails, return the original phone number
      return phone;
    }
  }

  interface BrowserEntry {
    time: Date;
    time_usec: number;
    title: string;
    url: string;
    favicon_url?: string;
  }

  // Filter and collect browser history entries
  const browserEntries: BrowserEntry[] = [];
  for (const entry of data["Browser History"]) {
    const millis = Math.floor(entry.time_usec / 1000);
    if (millis < cutoffMillis || millis > maxCutoffMillis) continue;

    const url = entry.url || "";
    try {
      const u = new URL(url);
      const host = u.hostname;

      if (
        (host.endsWith("facebook.com") && host !== "l.facebook.com") ||
        host.includes("youtube.com") ||
        host.includes("chatgpt.com")
      ) {
        continue;
      }
    } catch {
      continue; // Vigase URL-i korral jäta samuti vahele
    }

    const title = entry.title || "(pealkiri puudub)";
    
    // Eemalda kirjed, mille pealkirjas on täissõnana "Ron" või "Ronald"
    const ronPattern = /\bron\b/i;
    const ronaldPattern = /\bronald\b/i;
    if (ronPattern.test(title) || ronaldPattern.test(title)) continue;
    
    browserEntries.push({
      time: new Date(millis),
      time_usec: entry.time_usec,
      title,
      url,
      favicon_url: entry.favicon_url
    });
  }

  // Generate call rows with associated browser history
  const callRows: string[] = [];
  let callCount = 0;

  for (const call of calls) {
    // Skip calls with 0 duration (missed calls, etc.)
    if (call.duration === 0) continue;
    
    callCount++;
    
    // Find browser entries during this call (sorted oldest first)
    const entriesDuringCall = browserEntries
      .filter(entry => entry.time >= call.startTime && entry.time <= call.endTime)
      .sort((a, b) => a.time_usec - b.time_usec);

    const callBgColor = callCount % 2 === 1 ? '#e0e0ff' : '#e0ffe0';
    const callId = `call-${callCount}`;
    const hasEntries = entriesDuringCall.length > 0;
    const isExpanded = hasEntries; // Expanded if has entries, collapsed if no entries
    
    // Main call row
    callRows.push(`
          <tr class="call-row${hasEntries ? ' has-entries' : ''}" style="background:${callBgColor}">
            <td>
              <button class="toggle-btn" onclick="toggleCallDetails('${callId}')" aria-expanded="${isExpanded}">
                <span class="toggle-icon">${isExpanded ? '▼' : '▶'}</span> #${callCount}
              </button>
            </td>
            <td>${formatTime(call.startTime.getTime() * 1000)}</td>
            <td>${formatPhoneNumber(call.phone)}</td>
            <td>${formatDuration(call.duration)}</td>
          </tr>`);

    // Browser history details row
    let browserLogTable = '';
    if (entriesDuringCall.length > 0) {
      const browserRows = entriesDuringCall.map(entry => {
        const dateStr = formatTime(entry.time_usec);
        const favicon = entry.favicon_url ? `<img src="${entry.favicon_url}" style="width:16px;height:16px;vertical-align:middle;margin-right:8px" alt="">` : "";
        
        return `
                  <tr>
                    <td class="date-cell">${dateStr}</td>
                    <td class="title-cell" title="${entry.title.replace(/"/g, '&quot;')}">${favicon}<a href="${entry.url}" target="_blank" rel="noopener noreferrer">${entry.title}</a></td>
                    <td class="url-cell" title="${entry.url.replace(/"/g, '&quot;')}">${highlightDomain(entry.url)}</td>
                  </tr>`;
      }).join('');

      browserLogTable = `
              <div class="browser-history-container">
                <table>
                  <thead>
                    <tr>
                      <th>Date and Time</th>
                      <th>Title</th>
                      <th>URL</th>
                    </tr>
                  </thead>
                  <tbody>${browserRows}
                  </tbody>
                </table>
              </div>`;
    }

    // Details row with browser history
    callRows.push(`
          <tr id="${callId}" class="details-row${isExpanded ? '' : ' collapsed'}" style="background:${callBgColor}">
            <td colspan="4" class="details-cell">
              ${browserLogTable || '<p style="text-align:center;color:#666;margin:10px;">No browser activity during this call</p>'}
            </td>
          </tr>`);
  }

  const html = `<!DOCTYPE html>
  <html lang="et">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Phone Calls and Browser History June 5 - July 7, 2025</title>
    <style>
      * {
        box-sizing: border-box;
      }
      
      body {
        font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, sans-serif;
        line-height: 1.6;
        color: #333;
        background-color: #f8f9fa;
        margin: 0;
        padding: 20px;
      }
      
      .container {
        max-width: 1400px;
        margin: 0 auto;
        background: white;
        border-radius: 12px;
        box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        padding: 30px;
      }
      
      h1 {
        color: #2c3e50;
        font-size: 2rem;
        margin-bottom: 30px;
        text-align: center;
        border-bottom: 3px solid #3498db;
        padding-bottom: 15px;
      }

      #history table {
        width: 100%;
        border: 0;
        table-layout: auto;
      }
      #history > tbody > tr > td:nth-child(1) { width: 80px; white-space: nowrap; }
      #history > tbody > tr > td:nth-child(2) { width: 180px; }
      #history > tbody > tr > td:nth-child(3) { width: 260px; }
      #history > tbody > tr > td:nth-child(4) { width: 340px; }
      #history > thead > tr > th:nth-child(1) { width: 80px; white-space: nowrap; }
      #history > thead > tr > th:nth-child(2) { width: 180px; }
      #history > thead > tr > th:nth-child(3) { width: 260px; }
      #history > thead > tr > th:nth-child(4) { width: 340px; }
      
      table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
        background: white;
        border-radius: 10px;
        overflow: hidden;
        box-shadow: 0 2px 10px rgba(0,0,0,0.08);
        table-layout: fixed;
      }
      
      .details-cell table {
        margin: 0;
        box-shadow: none;
        border-radius: 0;
        width: 100%;
        table-layout: auto;
      }
      
      thead {
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        color: white;
      }
      
      th {
        padding: 12px;
        text-align: left;
        font-weight: 600;
        font-size: 0.9rem;
        letter-spacing: 0.5px;
      }
      
      tbody tr {
        transition: all 0.2s ease;
      }
      
      tbody tr:hover {
        background-color: #e3f2fd;
        transform: translateY(-1px);
        box-shadow: 0 2px 8px rgba(0,0,0,0.1);
      }
      
      td {
        padding: 8px 12px;
        vertical-align: top;
        border-bottom: 1px solid #e9ecef;
      }
      
      .date-cell {
        font-family: 'SF Mono', Monaco, 'Cascadia Code', 'Roboto Mono', Consolas, 'Courier New', monospace;
        font-size: 0.8rem;
        color: #666;
        white-space: nowrap;
      }
      
      .title-cell {
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;
        line-height: 1.1;
        font-size: 0.8rem;
      }
      
      .title-cell a {
        color: #2c3e50;
        text-decoration: none;
        font-weight: 500;
        transition: color 0.2s ease;
      }
      
      .title-cell a:hover {
        color: #3498db;
        text-decoration: underline;
      }
      
      .url-cell {
        font-family: 'SF Mono', Monaco, 'Cascadia Code', 'Roboto Mono', Consolas, 'Courier New', monospace;
        font-size: 0.7rem;
        color: #7f8c8d;
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;
        line-height: 1.1;
      }
      
      .url-cell strong {
        color: #2c3e50;
      }
      
      .toggle-btn {
        background: none;
        border: none;
        color: #3498db;
        cursor: pointer;
        font-size: 0.9rem;
        padding: 4px 8px;
        border-radius: 4px;
        transition: all 0.2s ease;
      }
      
      .toggle-btn:hover {
        background: rgba(52, 152, 219, 0.1);
        color: #2980b9;
      }
      
      .toggle-icon {
        display: inline-block;
        transition: transform 0.2s ease;
      }
      
      .details-row {
        transition: all 0.3s ease;
      }
      
      .details-row.collapsed {
        display: none;
      }
      
      .details-cell {
        padding: 0 !important;
        border-bottom: none !important;
      }
      
      .browser-history-container {
        margin: 15px;
        border-radius: 8px;
        background: rgba(255, 255, 255, 0.5);
        border: 1px solid #e0e0e0;
        overflow: hidden;
      }
      
      .details-cell table {
        margin: 0;
        box-shadow: none;
        border-radius: 0;
        width: 100%;
        table-layout: auto;
      }
      
      .details-cell p {
        margin: 10px;
        text-align: center;
        color: #666;
        font-style: italic;
      }
      
      .call-row {
        cursor: pointer;
      }
      
      .call-row.has-entries {
        font-weight: bold;
      }
      
      .call-row:hover {
        background-color: #e3f2fd !important;
      }
      
      .stats {
        text-align: center;
        margin-top: 20px;
        padding: 15px;
        background: #f8f9fa;
        border-radius: 8px;
        color: #666;
        font-size: 0.9rem;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <h1>Phone Calls and Browser History June 5 - July 7, 2025</h1>
      
      <table id="history" border="1" cellspacing="0" cellpadding="5">
        <thead>
          <tr>
            <th>Call #</th>
            <th>Call Time</th>
            <th>Phone Number</th>
            <th>Call Duration</th>
          </tr>
        </thead>
        <tbody>
          ${callRows.join("\n")}
        </tbody>
      </table>
      
      <div class="stats">
        <span id="visibleCount">${callRows.length / 2}</span> phone calls total
      </div>
    </div>

    <script>
      function toggleCallDetails(callId) {
        const detailsRow = document.getElementById(callId);
        const button = document.querySelector(\`[onclick="toggleCallDetails('\${callId}')"]\`);
        const icon = button.querySelector('.toggle-icon');
        
        if (detailsRow.classList.contains('collapsed')) {
          detailsRow.classList.remove('collapsed');
          button.setAttribute('aria-expanded', 'true');
          icon.textContent = '▼';
        } else {
          detailsRow.classList.add('collapsed');
          button.setAttribute('aria-expanded', 'false');
          icon.textContent = '▶';
        }
      }

      // Add click handler to call rows for easier toggling
      document.addEventListener('DOMContentLoaded', function() {
        const callRows = document.querySelectorAll('.call-row');
        callRows.forEach(row => {
          row.addEventListener('click', function(e) {
            // Don't trigger if clicking the button directly
            if (e.target.closest('.toggle-btn')) return;
            
            const button = row.querySelector('.toggle-btn');
            if (button) {
              button.click();
            }
          });
        });
      });
    </script>
  </body>
  </html>`;

  writeFileSync("./ajalugu.html", html, "utf-8");