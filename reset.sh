#!/bin/bash
set -e

# Reset script to remove javazone-mcp configuration and files

echo "Starting reset process..."

# Step 1: Remove javazone-mcp block (7 lines) from Claude config
CLAUDE_CONFIG="/Users/jarlehansen/Library/Application Support/Claude/claude_desktop_config.json"
echo "Removing javazone-mcp configuration from Claude config..."

# Find the line with "javazone-mcp" and delete it plus the next 6 lines (7 total)
sed -i '' '/javazone-mcp/,+6d' "$CLAUDE_CONFIG"
echo "Removed javazone-mcp block from configuration"

# Find the line with "jetbrains" and delete it plus the next 10 lines (11 total)
sed -i '' '/jetbrains/,+10d' "$CLAUDE_CONFIG"
echo "Removed jetbrains block from configuration"

# Step 2: Delete javazone-mcp.zip from Downloads
echo "Removing javazone-mcp.zip from Downloads..."
if [ -f "$HOME/Downloads/javazone-mcp.zip" ]; then
    rm "$HOME/Downloads/javazone-mcp.zip"
    echo "Deleted javazone-mcp.zip"
else
    echo "javazone-mcp.zip not found in Downloads"
fi

# Step 3: Delete javazone-mcp folder from Downloads
echo "Removing javazone-mcp folder from Downloads..."
if [ -d "$HOME/Downloads/javazone-mcp" ]; then
    rm -rf "$HOME/Downloads/javazone-mcp"
    echo "Deleted javazone-mcp folder"
else
    echo "javazone-mcp folder not found in Downloads"
fi

# Step 4: Run restart_claude.sh
echo "Running restart_claude.sh..."
if [ -f "./restart_claude.sh" ]; then
    ./restart_claude.sh
else
    echo "restart_claude.sh not found in current directory"
fi

echo "Reset process completed!"