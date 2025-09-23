# JavaZone 2025 MCP Presentation

This project contains a presentation about MCP (Model Context Protocol) for JavaZone 2025.

The presentation is built using [Marp](https://marp.app/), a markdown presentation ecosystem that converts markdown files into slide decks.

## Getting Started

### Development Mode

For development with live reload:

**Basic presentation:**
```bash
npm run dev
```

**Extended presentation with MCP Registry browser:**
```bash
npm run dev:extended
```

This will watch the markdown files for changes, automatically regenerate the HTML, and start the MCP Registry browser on port 8888.

### Build

To generate the presentation HTML files:

**Basic presentation:**
```bash
npm start
```

**Extended presentation with MCP Registry browser:**
```bash
npm run start:extended
```

### Presentation Mode

To open the presentation in full-screen mode with additional tools:

**Basic presentation:**
```bash
npm run present
```

**Extended presentation with all tools:**
```bash
npm run present:extended
```

This opens the presentation in Vivaldi browser with Spring Initializr, and starts both the MCP Registry browser and MCP Inspector.

### Tools

**MCP Registry Browser:**
```bash
npm run registry-browser
```
Serves the MCP registry browser interface on http://localhost:8888

**MCP Inspector:**
```bash
npm run mcp-inspector
```
Launches the MCP Inspector tool for testing and debugging MCP servers.

## Project Structure

- `mcp.md` - The basic presentation content in Markdown format
- `mcp-extended.md` - The extended presentation with interactive demos
- `presentation.html` - Generated HTML for basic presentation
- `presentation-extended.html` - Generated HTML for extended presentation
- `mcp-registry.html` - Interactive MCP Registry browser interface
- `images/` - Presentation images and assets
- `package.json` - Project configuration and dependencies

## Features

- **Two presentation versions**: Basic and extended with interactive demos
- **MCP Registry Browser**: Local interface to browse available MCP servers
- **MCP Inspector Integration**: Tool for testing MCP server connectivity
- **Full-screen presentation mode**: Opens with relevant development tools
