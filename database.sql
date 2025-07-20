-- Database schema for phone calls and browser history
CREATE TABLE IF NOT EXISTS calls (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    phone TEXT NOT NULL,
    start_time DATETIME NOT NULL,
    end_time DATETIME NOT NULL,
    duration INTEGER NOT NULL,
    type TEXT NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS favicons (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    url TEXT UNIQUE NOT NULL,
    data BLOB,
    content_type TEXT,
    base64_data TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS browser_history (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    call_id INTEGER,
    time_usec INTEGER NOT NULL,
    title TEXT,
    url TEXT,
    favicon_id INTEGER,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (call_id) REFERENCES calls (id) ON DELETE CASCADE,
    FOREIGN KEY (favicon_id) REFERENCES favicons (id) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS call_attachments (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    call_id INTEGER NOT NULL,
    type TEXT NOT NULL CHECK (type IN ('text', 'image')),
    content TEXT NOT NULL, -- For text: the actual text, for images: filename
    filename TEXT, -- Original filename for images
    mime_type TEXT, -- MIME type for images
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (call_id) REFERENCES calls (id) ON DELETE CASCADE
);

-- Indexes for better performance
CREATE INDEX IF NOT EXISTS idx_calls_start_time ON calls (start_time);
CREATE INDEX IF NOT EXISTS idx_calls_phone ON calls (phone);
CREATE INDEX IF NOT EXISTS idx_favicons_url ON favicons (url);
CREATE INDEX IF NOT EXISTS idx_browser_history_call_id ON browser_history (call_id);
CREATE INDEX IF NOT EXISTS idx_browser_history_time ON browser_history (time_usec);
CREATE INDEX IF NOT EXISTS idx_browser_history_favicon_id ON browser_history (favicon_id);
CREATE INDEX IF NOT EXISTS idx_call_attachments_call_id ON call_attachments (call_id);
