# Copilot Instructions - Forex Fraud Evidence Portal

## Project Overview
This is a **Forex Fraud Evidence Portal** - a secure web application for viewing and managing phone call evidence and browser history data related to forex fraud investigations. The app uses TypeScript, Express.js, SQLite database, and Handlebars templating with server-side rendering.

## 🔄 CRITICAL: Keep This File Updated
**Every LLM working on this project MUST update this file whenever:**
- New files are added
- Project structure changes
- New features are implemented
- Database schema changes
- Dependencies are added/removed
- Configuration changes are made

## 📁 Project Structure & File Locations

### Core Server Files
- **`server.ts`** - Main Express server with authentication, Handlebars templating, and API endpoints
- **`package.json`** - Dependencies: express, sqlite3, express-handlebars, express-session, bcryptjs, multer, dotenv
- **`bun.lock`** - Bun package manager lock file
- **`.env`** - Environment variables (ADMIN_USERNAME, ADMIN_PASSWORD, VIEWER_USERNAME, VIEWER_PASSWORD, SESSION_SECRET)
- **`.gitignore`** - Git ignore file (excludes sensitive data and build artifacts)

### Data Files
- **`backup_before_dedup.sqlite`** - Database backup before deduplication
- **`database.sqlite`** - Main SQLite database (41 unique calls, 1007 unique browser history entries)
- **`database.sql`** - Database schema definition

### Templates (Handlebars Server-Side Rendering)
- **`views/layouts/main.hbs`** - Main HTML layout template
- **`views/dashboard.hbs`** - Main dashboard page template
- **`views/login.hbs`** - Login page template
- **`views/partials/`** - Modular template components:
  - `header.hbs` - Top navigation and user info
  - `case-banner.hbs` - Case information banner
  - `calls-table.hbs` - Main calls table container
  - `call-row.hbs` - Individual call row with toggle functionality
  - `call-details.hbs` - Expanded call details with browser history
  - `attachment.hbs` - Individual attachment display
  - `add-attachment-form.hbs` - Form for adding text/image attachments

### Static Assets
- **`public/`** - Static files served by Express
  - `style.css` - All application CSS styles
  - `app.js` - Client-side JavaScript for interactions

## 🔑 Authentication System
- **Two user roles**: admin (full access) and viewer (read-only)
- **Session-based**: Uses express-session with bcryptjs password hashing
- **Environment variables**: Credentials stored in `.env` file
- **Middleware**: `requireAuth` and `requireAdmin` protect routes

## 🗄️ Database Schema
### Tables:
- **`calls`** - Phone call records (41 unique entries after deduplication)
- **`browser_history`** - Browser history entries linked to calls (1007 unique entries)
- **`favicons`** - Website favicons for browser history
- **`call_attachments`** - Text notes and images attached to calls

## 🛠️ Development Environment
- **Runtime**: Bun v1.2.19 in WSL2 Ubuntu environment
- **Language**: TypeScript
- **Server**: Express.js with Handlebars templating
- **Database**: SQLite3
- **File uploads**: Multer for image attachments

## 📡 API Endpoints
### Authentication:
- `POST /login` - User login
- `POST /logout` - User logout
- `GET /api/user-info` - Current user information

### Data Access:
- `GET /` - Main dashboard (server-side rendered)
- `GET /api/calls` - Get all calls with browser history and attachments
- `GET /api/calls/:id` - Get specific call details

### Admin Operations:
- `POST /api/calls/:id/attachments/text` - Add text attachment (admin only)
- `POST /api/calls/:id/attachments/image` - Upload image attachment (admin only)
- `DELETE /api/attachments/:id` - Delete attachment (admin only)

## 🎨 Frontend Architecture
### Server-Side Rendering:
- **Handlebars templates** with custom helpers:
  - `formatDate` - Format timestamps
  - `formatDuration` - Format call duration
  - `getCountryFlag` - Country flag emojis
  - `formatUrl` - URL display formatting
  - `eq` - Equality comparison

### Client-Side JavaScript (`public/app.js`):
- `toggleCallDetails()` - Expand/collapse call details
- `addTextAttachment()` - Add text notes
- `addImageAttachment()` - Upload images
- `deleteAttachment()` - Remove attachments

## 🔧 Configuration & Helpers
### Handlebars Helpers (in `server.ts`):
- Date/time formatting with timezone support
- Duration calculations for call length
- Country flag emoji mapping
- URL parsing and display formatting
- Template equality comparisons

### Environment Setup:
1. Install Bun runtime
2. Run `bun install` to install dependencies
3. Create `.env` file with authentication credentials
4. Initialize database with `database.sql` schema
5. Start server with `bun run server.ts`

### Git Repository:
- **Initialized**: Git repository with main branch
- **Initial commit**: Complete project structure and functionality
- **Ignored files**: Sensitive data (.env, *.sqlite), logs, uploads, node_modules
- **Tracked files**: Source code, templates, documentation, schema

## 🚀 Recent Changes & Current State
- **Converted from client-side to server-side rendering** using Handlebars
- **Authentication system** with admin/viewer roles implemented
- **Database deduplicated** from 123→41 calls, 3024→1007 browser history entries
- **CSS extracted** to separate file for better organization
- **Modular templates** created for maintainable code structure
- **Legacy files removed** - Cleaned up unused test files, old HTML exports, and utility scripts

## 📝 Development Notes
- Use WSL2 for better debugging experience
- Always backup database before major changes
- Test authentication flows when modifying user system
- Validate Handlebars templates after structure changes
- Keep partials small and focused on single responsibilities

---
**Last Updated**: July 20, 2025
**LLM Reminder**: Update this file whenever you make structural changes to the project!
