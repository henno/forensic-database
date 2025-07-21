import express, {Request} from 'express';
import {Database} from 'sqlite3';
import multer from 'multer';
import cors from 'cors';
import path from 'path';
import {appendFileSync, existsSync, mkdirSync, renameSync} from 'fs';
import fs from 'fs';
import session from 'express-session';
import {engine} from 'express-handlebars';
import dotenv from 'dotenv';

// Load environment variables
dotenv.config();

// Helper function to log to file
function logToFile(message: string) {
  const timestamp = new Date().toISOString();
  appendFileSync('debug.log', `${timestamp}: ${message}\n`);
}

// Extend session types
declare module 'express-session' {
  interface SessionData {
    user?: {
      username: string;
      role: string;
    };
  }
}

// Extend Request interface
interface AuthenticatedRequest extends Request {
  session: session.Session & Partial<session.SessionData>;
}

const app = express();
const PORT = process.env.PORT || 3000;

// Configure handlebars
const hbs = engine({
  extname: '.hbs',
  defaultLayout: 'main',
  layoutsDir: path.join(process.cwd(), 'views/layouts'),
  partialsDir: path.join(process.cwd(), 'views/partials'),
  helpers: {
    formatDate: function(timestamp: number | string, isMicroseconds?: boolean) {
      if (!timestamp) {
        return 'No date';
      }

      try {
        let date;

        // Check if isMicroseconds is actually a boolean true, not a Handlebars context object
        const isActuallyMicroseconds = isMicroseconds === true;

        if (isActuallyMicroseconds) {
          // Browser history microseconds - convert to milliseconds
          date = new Date(Number(timestamp) / 1000);
        } else {
          // Call dates - ISO strings or regular timestamps
          date = new Date(timestamp);
        }

        if (isNaN(date.getTime())) {
          return 'Invalid date';
        }

        const fullPrecision = date.toISOString().replace('T', ' ').replace('Z', '');
        const displayFormat = date.toISOString().replace('T', ' ').replace('Z', '').replace(/:\d{2}\.\d{3}$/, '');

        return `<span title="${fullPrecision}">${displayFormat}</span>`;
      } catch (error) {
        return 'Error';
      }
    },
    getDisplayTitle: function(title: string, title_en: string) {
      // Return English title if available and not empty, otherwise return original title
      if (title_en && title_en.trim().length > 0) {
        return title_en;
      }
      return title || '(no title)';
    },
    renderMarkdown: function(markdown: string) {
      if (!markdown) return '';

      // First, escape HTML to prevent XSS and template breaking
      function escapeHtml(text: string): string {
        const map: { [key: string]: string } = {
          '&': '&amp;',
          '<': '&lt;',
          '>': '&gt;',
          '"': '&quot;',
          "'": '&#039;'
        };
        return text.replace(/[&<>"']/g, function(m) { return map[m]; });
      }

      // Store protected content to avoid conflicts
      const protectedContent: string[] = [];
      let html = escapeHtml(markdown);

      // Step 1: Protect and process images
      html = html.replace(/!\[([^\]]*)\]\(([^)]+)\)/g, (match, alt, url) => {
        const placeholder = `MDPROTECTED${protectedContent.length}MDPROTECTED`;
        protectedContent.push(`<img src="${url}" alt="${alt}" style="max-width: 100%; height: auto; border: 1px solid #ddd; margin: 5px 0;">`);
        return placeholder;
      });

      // Step 2: Protect and process links
      html = html.replace(/\[([^\]]+)\]\(([^)]+)\)/g, (match, text, url) => {
        const placeholder = `MDPROTECTED${protectedContent.length}MDPROTECTED`;
        protectedContent.push(`<a href="${url}" target="_blank" rel="noopener noreferrer">${text}</a>`);
        return placeholder;
      });

      // Step 3: Protect and process code
      html = html.replace(/`([^`]+)`/g, (match, code) => {
        const placeholder = `MDPROTECTED${protectedContent.length}MDPROTECTED`;
        protectedContent.push(`<code style="background: #f4f4f4; padding: 2px 4px; border-radius: 3px; font-family: monospace;">${code}</code>`);
        return placeholder;
      });

      // Step 4: Process formatting on remaining text
      html = html
        // Bold: **text** or __text__
        .replace(/\*\*([^*]+)\*\*/g, '<strong>$1</strong>')
        .replace(/__([^_]+)__/g, '<strong>$1</strong>')
        // Italic: *text* or _text_
        .replace(/\*([^*]+)\*/g, '<em>$1</em>')
        .replace(/_([^_]+)_/g, '<em>$1</em>')
        // Line breaks
        .replace(/\n/g, '<br>');

      // Step 5: Restore protected content
      for (let i = 0; i < protectedContent.length; i++) {
        const placeholder = `MDPROTECTED${i}MDPROTECTED`;
        const content = protectedContent[i];
        html = html.replace(new RegExp(placeholder, 'g'), content);
      }
      return html;
    },
    formatDuration: function(seconds: number) {
      if (!seconds || seconds === 0) return '00:00:00';
      
      const hours = Math.floor(seconds / 3600);
      const minutes = Math.floor((seconds % 3600) / 60);
      const secs = seconds % 60;
      
      return `${hours.toString().padStart(2, '0')}:${minutes.toString().padStart(2, '0')}:${secs.toString().padStart(2, '0')}`;
    },
    getCountryFlag: function(phoneNumber: string) {
      if (!phoneNumber) return '🌍';
      
      const cleanNumber = phoneNumber.replace(/[^\d+]/g, '');
      
      const countryFlags: Record<string, string> = {
        '+1': '🇺🇸',      // US/Canada
        '+7': '🇷🇺',      // Russia
        '+33': '🇫🇷',     // France
        '+34': '🇪🇸',     // Spain
        '+36': '🇭🇺',     // Hungary
        '+39': '🇮🇹',     // Italy
        '+41': '🇨🇭',     // Switzerland
        '+43': '🇦🇹',     // Austria
        '+44': '🇬🇧',     // United Kingdom
        '+45': '🇩🇰',     // Denmark
        '+46': '🇸🇪',     // Sweden
        '+47': '🇳🇴',     // Norway
        '+48': '🇵🇱',     // Poland
        '+49': '🇩🇪',     // Germany
        '+30': '🇬🇷',     // Greece
        '+31': '🇳🇱',     // Netherlands
        '+32': '🇧🇪',     // Belgium
        '+351': '🇵🇹',    // Portugal
        '+352': '🇱🇺',    // Luxembourg
        '+353': '🇮🇪',    // Ireland
        '+354': '🇮🇸',    // Iceland
        '+355': '🇦🇱',    // Albania
        '+356': '🇲🇹',    // Malta
        '+357': '🇨🇾',    // Cyprus
        '+358': '🇫🇮',    // Finland
        '+359': '🇧🇬',    // Bulgaria
        '+370': '🇱🇹',    // Lithuania
        '+371': '🇱🇻',    // Latvia
        '+372': '🇪🇪',    // Estonia
        '+373': '🇲🇩',    // Moldova
        '+374': '🇦🇲',    // Armenia
        '+375': '🇧🇾',    // Belarus
        '+376': '🇦🇩',    // Andorra
        '+377': '🇲🇨',    // Monaco
        '+378': '🇸🇲',    // San Marino
        '+380': '🇺🇦',    // Ukraine
        '+381': '🇷🇸',    // Serbia
        '+382': '🇲🇪',    // Montenegro
        '+383': '🇽🇰',    // Kosovo
        '+385': '🇭🇷',    // Croatia
        '+386': '🇸🇮',    // Slovenia
        '+387': '🇧🇦',    // Bosnia and Herzegovina
        '+389': '🇲🇰',    // North Macedonia
        '+420': '🇨🇿',    // Czech Republic
        '+421': '🇸🇰',    // Slovakia
        '+423': '🇱🇮',    // Liechtenstein
      };
      
      const sortedCodes = Object.keys(countryFlags).sort((a, b) => b.length - a.length);
      
      for (const code of sortedCodes) {
        if (cleanNumber.startsWith(code)) {
          return countryFlags[code];
        }
      }
      
      return '🌍';
    },
    formatUrl: function(url: string) {
      try {
        const urlObj = new URL(url);
        const hostname = urlObj.hostname;
        const protocol = urlObj.protocol + '//';
        const pathname = urlObj.pathname + urlObj.search + urlObj.hash;
        
        const protocolSpan = protocol ? `<span style="color: #666;">${protocol}</span>` : '';
        const hostnameSpan = `<span style="font-weight: bold; color: #000;">${hostname}</span>`;
        const pathSpan = pathname ? `<span style="color: #666;">${pathname}</span>` : '';
        
        return protocolSpan + hostnameSpan + pathSpan;
      } catch (e) {
        return `<span style="color: #666;">${url}</span>`;
      }
    },
    eq: function(a: any, b: any) {
      return a === b;
    },
    or: function(a: any, b: any) {
      return a || b;
    },
    trim: function(str: string) {
      return str ? str.trim() : '';
    }
  }
});

app.engine('hbs', hbs);
app.set('view engine', 'hbs');
app.set('views', path.join(process.cwd(), 'views'));

// Session configuration
app.use(session({
  secret: process.env.SESSION_SECRET || 'your-secret-key',
  resave: false,
  saveUninitialized: false,
  cookie: {
    secure: false, // Set to true in production with HTTPS
    maxAge: 24 * 60 * 60 * 1000 // 24 hours
  }
}));

// User credentials from environment
const users = {
  admin: {
    password: process.env.ADMIN_PASSWORD || 'admin123',
    role: 'admin'
  },
  viewer: {
    password: process.env.VIEWER_PASSWORD || 'viewer123',
    role: 'viewer'
  }
};

// Authentication middleware
function requireAuth(req: any, res: any, next: any) {
  if (req.session.user) {
    next();
  } else {
    if (req.path.startsWith('/api/')) {
      return res.status(401).json({ error: 'Authentication required' });
    }
    res.redirect('/login');
  }
}

// Admin-only middleware
function requireAdmin(req: any, res: any, next: any) {
  if (req.session.user && req.session.user.role === 'admin') {
    next();
  } else {
    if (req.path.startsWith('/api/')) {
      return res.status(403).json({ error: 'Admin access required' });
    }
    res.status(403).send('Admin access required');
  }
}

// Middleware
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
// Serve static files but exclude index.html (it's now protected)
app.use(express.static('public', { index: false }));
app.use('/uploads', express.static('uploads'));

// Create uploads directory if it doesn't exist
const uploadsDir = path.join(__dirname, 'uploads');
if (!existsSync(uploadsDir)) {
  mkdirSync(uploadsDir);
}

// Configure multer for file uploads
const storage = multer.diskStorage({
  destination: (req, file, cb) => {
    cb(null, uploadsDir);
  },
  filename: (req, file, cb) => {
    const uniqueSuffix = Date.now() + '-' + Math.round(Math.random() * 1E9);
    cb(null, file.fieldname + '-' + uniqueSuffix + path.extname(file.originalname));
  }
});

const upload = multer({ 
  storage,
  fileFilter: (req, file, cb) => {
    // Allow images only
    if (file.mimetype.startsWith('image/')) {
      cb(null, true);
    } else {
      cb(new Error('Only image files are allowed'));
    }
  },
  limits: {
    fileSize: 10 * 1024 * 1024 // 10MB limit
  }
});

// Database connection
const db = new Database('./database.sqlite');

// Authentication Routes

// Login page
app.get('/login', (req: any, res: any) => {
  if (req.session.user) {
    return res.redirect('/');
  }
  res.render('login', { title: 'Login - Evidence Database for Forex Fraud' });
});

// Login handler
app.post('/login', async (req: any, res: any) => {
  const { username, password } = req.body;
  
  if (!username || !password) {
    return res.render('login', { 
      title: 'Login - Evidence Database for Forex Fraud',
      error: 'Username and password are required',
      username 
    });
  }
  
  const user = users[username as keyof typeof users];
  if (!user) {
    return res.render('login', { 
      title: 'Login - Evidence Database for Forex Fraud',
      error: 'Invalid username or password',
      username 
    });
  }
  
  // In production, you should hash passwords with bcrypt
  if (password === user.password) {
    req.session.user = {
      username,
      role: user.role
    };
    res.redirect('/');
  } else {
    res.render('login', { 
      title: 'Login - Evidence Database for Forex Fraud',
      error: 'Invalid username or password',
      username 
    });
  }
});

// Logout handler
app.post('/logout', (req: any, res: any) => {
  req.session.destroy((err: any) => {
    if (err) {
      console.error('Session destruction error:', err);
    }
    res.redirect('/login');
  });
});

// Protected main page
app.get('/', requireAuth, (req: any, res: any) => {
  logToFile('=== DASHBOARD ROUTE ACCESSED ===');
  
  const query = `
    SELECT
      c.*,
      (
        SELECT json_group_array(
          json_object(
            'id', bh.id,
            'time_usec', bh.time_usec,
            'title', bh.title,
            'title_en', bh.title_en,
            'url', bh.url,
            'favicon_url', f.url,
            'favicon_base64', f.base64_data,
            'favicon_id', f.id,
            'annotation', COALESCE(ba.annotation, '')
          )
        )
        FROM browser_history bh
        LEFT JOIN favicons f ON bh.favicon_id = f.id
        LEFT JOIN browser_annotations ba ON bh.id = ba.browser_history_id
        WHERE bh.call_id = c.id
      ) as browser_history,
      (
        SELECT json_group_array(
          json_object(
            'id', ca.id,
            'type', ca.type,
            'content', ca.content,
            'filename', ca.filename,
            'mime_type', ca.mime_type,
            'created_at', ca.created_at
          )
        )
        FROM call_attachments ca
        WHERE ca.call_id = c.id
      ) as attachments
    FROM calls c
    ORDER BY c.start_time ASC
  `;

  // Query for orphaned browser entries (not associated with any call)
  const orphanedBrowserQuery = `
    SELECT
      bh.id,
      bh.time_usec,
      bh.title,
      bh.title_en,
      bh.url,
      f.url as favicon_url,
      f.base64_data as favicon_base64,
      f.id as favicon_id,
      COALESCE(ba.annotation, '') as annotation
    FROM browser_history bh
    LEFT JOIN favicons f ON bh.favicon_id = f.id
    LEFT JOIN browser_annotations ba ON bh.id = ba.browser_history_id
    WHERE bh.call_id IS NULL
    ORDER BY bh.time_usec ASC
  `;
  
  db.all(query, (err, rows) => {
    if (err) {
      logToFile(`DATABASE ERROR: ${err.message}`);
      console.error('Database error:', err);
      return res.render('dashboard', {
        title: 'Forex Fraud Evidence Portal',
        user: req.session.user,
        isAdmin: req.session.user.role === 'admin',
        error: 'Failed to load call data',
        calls: []
      });
    }
    
    logToFile(`DATABASE QUERY SUCCESS: Found ${rows.length} calls`);
    
    // Parse JSON fields and prepare data
    const calls = rows.map((row: any) => {
      const browserHistory = JSON.parse(row.browser_history).filter((entry: any) => entry.id !== null);
      const attachments = row.attachments ? JSON.parse(row.attachments).filter((att: any) => att.id !== null) : [];
      
      // Sort browser history by time
      browserHistory.sort((a: any, b: any) => a.time_usec - b.time_usec);
      
      // Debug: log the first call's data
      if (row.id === 1) {
        logToFile(`FIRST CALL DATA: ${JSON.stringify({ 
          id: row.id, 
          start_time: row.start_time, 
          end_time: row.end_time,
          start_type: typeof row.start_time,
          end_type: typeof row.end_time
        })}`);
      }
      
      return {
        ...row,
        browser_history: browserHistory,
        attachments: attachments,
        hasBrowserHistory: browserHistory.length > 0
      };
    });
    
    // Now get orphaned browser entries
    db.all(orphanedBrowserQuery, (err, orphanedRows) => {
      if (err) {
        logToFile(`ORPHANED BROWSER QUERY ERROR: ${err.message}`);
        console.error('Orphaned browser query error:', err);
        // Continue with just the calls data
        orphanedRows = [];
      }

      const orphanedBrowserEntries = orphanedRows.map((row: any) => ({
        ...row,
        type: 'orphaned_browser_entry',
        // Convert time_usec to timestamp for sorting
        timestamp: row.time_usec / 1000000, // Convert microseconds to seconds
        readable_time: new Date(row.time_usec / 1000).toISOString()
      }));

      // Create a chronological timeline mixing calls and grouped orphaned browser entries
      const timeline = [];

      // Add calls to timeline
      calls.forEach(call => {
        timeline.push({
          ...call,
          type: 'call',
          timestamp: new Date(call.start_time).getTime() / 1000 // Convert to seconds
        });
      });

      // Group consecutive orphaned browser entries
      if (orphanedBrowserEntries.length > 0) {
        const orphanedGroups = [];
        let currentGroup = [orphanedBrowserEntries[0]];

        for (let i = 1; i < orphanedBrowserEntries.length; i++) {
          const currentEntry = orphanedBrowserEntries[i];
          const previousEntry = orphanedBrowserEntries[i - 1];

          // Check if there's a call between this entry and the previous one
          const currentTime = currentEntry.timestamp;
          const previousTime = previousEntry.timestamp;

          const callBetween = calls.some(call => {
            const callStart = new Date(call.start_time).getTime() / 1000;
            const callEnd = new Date(call.end_time).getTime() / 1000;
            return (callStart > previousTime && callStart < currentTime) ||
                   (callEnd > previousTime && callEnd < currentTime) ||
                   (callStart < previousTime && callEnd > currentTime);
          });

          if (callBetween) {
            // Start a new group
            orphanedGroups.push(currentGroup);
            currentGroup = [currentEntry];
          } else {
            // Add to current group
            currentGroup.push(currentEntry);
          }
        }

        // Add the last group
        orphanedGroups.push(currentGroup);

        // Add grouped orphaned entries to timeline
        orphanedGroups.forEach(group => {
          timeline.push({
            type: 'orphaned_browser_group',
            timestamp: group[0].timestamp, // Use timestamp of first entry in group
            browser_entries: group
          });
        });
      }

      // Sort timeline chronologically
      timeline.sort((a, b) => a.timestamp - b.timestamp);

      logToFile(`RENDERING DASHBOARD with ${calls.length} calls and ${orphanedBrowserEntries.length} orphaned browser entries in chronological order`);

      res.render('dashboard', {
        title: 'Forex Fraud Evidence Portal',
        user: req.session.user,
        isAdmin: req.session.user.role === 'admin',
        timeline: timeline,
        calls: calls, // Keep for backward compatibility if needed
        orphanedBrowserEntries: orphanedBrowserEntries,
        hasOrphanedEntries: orphanedBrowserEntries.length > 0
      });
    });
  });
});

// API Routes - All protected by authentication

// Get user info
app.get('/api/user-info', requireAuth, (req: any, res: any) => {
  res.json({
    username: req.session.user.username,
    role: req.session.user.role
  });
});

// Get all calls with their browser history and attachments
app.get('/api/calls', requireAuth, (req, res) => {
  const query = `
    SELECT
      c.*,
      (
        SELECT json_group_array(
          json_object(
            'id', bh.id,
            'time_usec', bh.time_usec,
            'title', bh.title,
            'title_en', bh.title_en,
            'url', bh.url,
            'favicon_url', f.url,
            'favicon_base64', f.base64_data,
            'favicon_id', f.id,
            'annotation', COALESCE(ba.annotation, '')
          )
        )
        FROM browser_history bh
        LEFT JOIN favicons f ON bh.favicon_id = f.id
        LEFT JOIN browser_annotations ba ON bh.id = ba.browser_history_id
        WHERE bh.call_id = c.id
      ) as browser_history,
      (
        SELECT json_group_array(
          json_object(
            'id', ca.id,
            'type', ca.type,
            'content', ca.content,
            'filename', ca.filename,
            'mime_type', ca.mime_type,
            'created_at', ca.created_at
          )
        )
        FROM call_attachments ca
        WHERE ca.call_id = c.id
      ) as attachments
    FROM calls c
    ORDER BY c.start_time ASC
  `;

  db.all(query, (err, rows) => {
    if (err) {
      res.status(500).json({ error: err.message });
      return;
    }

    // Parse JSON fields
    const calls = rows.map((row: any) => ({
      ...row,
      browser_history: JSON.parse(row.browser_history).filter((entry: any) => entry.id !== null),
      attachments: row.attachments ? JSON.parse(row.attachments).filter((att: any) => att.id !== null) : []
    }));

    res.json(calls);
  });
});

// Get orphaned browser entries (not associated with any call)
app.get('/api/orphaned-browser-entries', requireAuth, (req, res) => {
  const query = `
    SELECT
      bh.id,
      bh.time_usec,
      bh.title,
      bh.title_en,
      bh.url,
      f.url as favicon_url,
      f.base64_data as favicon_base64,
      f.id as favicon_id,
      COALESCE(ba.annotation, '') as annotation
    FROM browser_history bh
    LEFT JOIN favicons f ON bh.favicon_id = f.id
    LEFT JOIN browser_annotations ba ON bh.id = ba.browser_history_id
    WHERE bh.call_id IS NULL
    ORDER BY bh.time_usec DESC
  `;

  db.all(query, (err, rows) => {
    if (err) {
      res.status(500).json({ error: err.message });
      return;
    }

    res.json(rows);
  });
});

// Get a specific call with details
app.get('/api/calls/:id', requireAuth, (req, res) => {
  const callId = req.params.id;
  
  const query = `
    SELECT 
      c.*,
      json_group_array(
        json_object(
          'id', bh.id,
          'time_usec', bh.time_usec,
          'title', bh.title,
          'title_en', bh.title_en,
          'url', bh.url,
          'favicon_url', f.url,
          'favicon_base64', f.base64_data,
          'favicon_id', f.id,
          'annotation', COALESCE(ba.annotation, '')
        )
      ) as browser_history,
      (
        SELECT json_group_array(
          json_object(
            'id', ca.id,
            'type', ca.type,
            'content', ca.content,
            'filename', ca.filename,
            'mime_type', ca.mime_type,
            'created_at', ca.created_at
          )
        )
        FROM call_attachments ca 
        WHERE ca.call_id = c.id
      ) as attachments
    FROM calls c
    LEFT JOIN browser_history bh ON c.id = bh.call_id
    LEFT JOIN favicons f ON bh.favicon_id = f.id
    LEFT JOIN browser_annotations ba ON bh.id = ba.browser_history_id
    WHERE c.id = ?
    GROUP BY c.id
  `;
  
  db.get(query, [callId], (err, row) => {
    if (err) {
      res.status(500).json({ error: err.message });
      return;
    }
    
    if (!row) {
      res.status(404).json({ error: 'Call not found' });
      return;
    }
    
    const call = {
      ...row,
      browser_history: JSON.parse((row as any).browser_history).filter((entry: any) => entry.id !== null),
      attachments: (row as any).attachments ? JSON.parse((row as any).attachments).filter((att: any) => att.id !== null) : []
    };
    
    res.json(call);
  });
});

// Add text attachment to a call
app.post('/api/calls/:id/attachments/text', requireAuth, requireAdmin, (req, res) => {
  const callId = req.params.id;
  const { content } = req.body;
  
  if (!content) {
    res.status(400).json({ error: 'Content is required' });
    return;
  }
  
  const query = `
    INSERT INTO call_attachments (call_id, type, content) 
    VALUES (?, 'text', ?)
  `;
  
  db.run(query, [callId, content], function(err) {
    if (err) {
      res.status(500).json({ error: err.message });
      return;
    }
    
    res.json({ 
      id: (this as any).lastID, 
      call_id: callId,
      type: 'text',
      content,
      created_at: new Date().toISOString()
    });
  });
});

// Add image attachment to a call
app.post('/api/calls/:id/attachments/image', requireAuth, requireAdmin, upload.single('image'), (req, res) => {
  const callId = req.params.id;
  
  if (!req.file) {
    res.status(400).json({ error: 'Image file is required' });
    return;
  }
  
  const query = `
    INSERT INTO call_attachments (call_id, type, content, filename, mime_type) 
    VALUES (?, 'image', ?, ?, ?)
  `;
  
  db.run(query, [callId, req.file.filename, req.file.originalname, req.file.mimetype], function(err) {
    if (err) {
      res.status(500).json({ error: err.message });
      return;
    }
    
    res.json({ 
      id: (this as any).lastID, 
      call_id: callId,
      type: 'image',
      content: req.file!.filename,
      filename: req.file!.originalname,
      mime_type: req.file!.mimetype,
      url: `/uploads/${req.file!.filename}`,
      created_at: new Date().toISOString()
    });
  });
});

// Delete attachment
app.delete('/api/attachments/:id', requireAuth, requireAdmin, (req, res) => {
  const attachmentId = req.params.id;
  
  const query = 'DELETE FROM call_attachments WHERE id = ?';
  
  db.run(query, [attachmentId], function(err) {
    if (err) {
      res.status(500).json({ error: err.message });
      return;
    }
    
    if ((this as any).changes === 0) {
      res.status(404).json({ error: 'Attachment not found' });
      return;
    }
    
    res.json({ message: 'Attachment deleted successfully' });
  });
});

// Browser History Annotation Endpoints

// Get annotation for a browser history entry
app.get('/api/browser-history/:id/annotation', requireAuth, (req, res) => {
  const browserHistoryId = req.params.id;

  const query = 'SELECT * FROM browser_annotations WHERE browser_history_id = ?';

  db.get(query, [browserHistoryId], (err, row) => {
    if (err) {
      res.status(500).json({ error: err.message });
      return;
    }

    res.json({
      browser_history_id: browserHistoryId,
      annotation: row ? row.annotation : '',
      id: row ? row.id : null,
      created_at: row ? row.created_at : null,
      updated_at: row ? row.updated_at : null
    });
  });
});

// Save/update annotation for a browser history entry
app.post('/api/browser-history/:id/annotation', requireAuth, requireAdmin, (req, res) => {
  const browserHistoryId = req.params.id;
  const { annotation } = req.body;

  if (annotation === undefined) {
    res.status(400).json({ error: 'Annotation content is required' });
    return;
  }

  // First check if annotation already exists
  db.get('SELECT id FROM browser_annotations WHERE browser_history_id = ?', [browserHistoryId], (err, row) => {
    if (err) {
      res.status(500).json({ error: err.message });
      return;
    }

    if (row) {
      // Update existing annotation
      const updateQuery = 'UPDATE browser_annotations SET annotation = ?, updated_at = CURRENT_TIMESTAMP WHERE browser_history_id = ?';
      db.run(updateQuery, [annotation, browserHistoryId], function(err) {
        if (err) {
          res.status(500).json({ error: err.message });
          return;
        }

        res.json({
          id: row.id,
          browser_history_id: browserHistoryId,
          annotation: annotation,
          updated_at: new Date().toISOString()
        });
      });
    } else {
      // Create new annotation
      const insertQuery = 'INSERT INTO browser_annotations (browser_history_id, annotation) VALUES (?, ?)';
      db.run(insertQuery, [browserHistoryId, annotation], function(err) {
        if (err) {
          res.status(500).json({ error: err.message });
          return;
        }

        res.json({
          id: (this as any).lastID,
          browser_history_id: browserHistoryId,
          annotation: annotation,
          created_at: new Date().toISOString()
        });
      });
    }
  });
});

// Delete annotation for a browser history entry
app.delete('/api/browser-history/:id/annotation', requireAuth, requireAdmin, (req, res) => {
  const browserHistoryId = req.params.id;

  const query = 'DELETE FROM browser_annotations WHERE browser_history_id = ?';

  db.run(query, [browserHistoryId], function(err) {
    if (err) {
      res.status(500).json({ error: err.message });
      return;
    }

    if ((this as any).changes === 0) {
      res.status(404).json({ error: 'Annotation not found' });
      return;
    }

    res.json({ message: 'Annotation deleted successfully' });
  });
});

// Image upload endpoint for markdown annotations
app.post('/api/upload-image', requireAuth, upload.single('image'), (req, res) => {
  console.log('Image upload request received');
  console.log('User:', req.session?.user?.username);
  console.log('File:', req.file);

  if (!req.file) {
    console.log('No file provided in request');
    res.status(400).json({ error: 'No image file provided' });
    return;
  }

  // Generate a unique filename
  const timestamp = Date.now();
  const randomString = Math.random().toString(36).substring(2, 15);
  const extension = path.extname(req.file.originalname) || '.png';
  const filename = `screenshot_${timestamp}_${randomString}${extension}`;
  const filepath = path.join(uploadsDir, filename);

  try {
    console.log('Moving file from', req.file.path, 'to', filepath);

    // Move the uploaded file to the uploads directory
    fs.renameSync(req.file.path, filepath);

    // Return the URL for the uploaded image
    const imageUrl = `/uploads/${filename}`;

    console.log('Image uploaded successfully:', imageUrl);
    logToFile(`Image uploaded: ${filename} (${req.file.size} bytes)`);

    res.json({
      success: true,
      filename: filename,
      url: imageUrl,
      size: req.file.size,
      originalName: req.file.originalname
    });

  } catch (error) {
    console.error('Error saving uploaded image:', error);
    res.status(500).json({ error: 'Failed to save image: ' + error.message });
  }
});


// Start server
app.listen(PORT, () => {
  const now = new Date().toISOString();
  console.log(`[${now}] Server running on http://localhost:${PORT}`);
  try {
    logToFile('=== SERVER STARTED - Testing file logging ===');
    logToFile('If you see this, file logging is working');
  } catch (error) {
    console.log('Error writing to debug.log:', error);
  }
});
