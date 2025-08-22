# JavaZone 2025 MCP Presentation

This project contains a presentation about MCP (Model Context Protocol) for JavaZone 2025.

The presentation is built using [Marp](https://marp.app/), a markdown presentation ecosystem that converts markdown files into beautiful slide decks.

## Getting Started

### Development Mode

For development with live reload, run:

```bash
npm run dev
```

This command will watch the `mcp.md` file for changes and automatically regenerate `presentation.html`.

### Build

To generate the presentation HTML file once, run:

```bash
npm start
```

This command will convert the `mcp.md` markdown file into `presentation.html` using the Marp CLI tool.

## Project Structure

- `mcp.md` - The main presentation content in Markdown format
- `presentation.html` - Generated HTML presentation file
- `package.json` - Project configuration and dependencies

## Requirements

- Node.js and npm installed
- Dependencies installed via `npm install`