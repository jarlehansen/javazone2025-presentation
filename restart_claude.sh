#!/bin/bash
set -e

# Quit Claude Desktop application
osascript -e 'quit app "Claude"'

# Wait a moment for the app to fully quit
sleep 2

# Start Claude Desktop application
open -a "Claude"