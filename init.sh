#!/bin/bash

# Unzip the file from Downloads folder
unzip ~/Downloads/javazone-mcp.zip -d ~/Downloads/

# Find the unzipped directory (assuming it creates a single directory)
UNZIPPED_DIR=$(find ~/Downloads -maxdepth 1 -type d -name "*javazone-mcp*" | head -1)

if [ -z "$UNZIPPED_DIR" ]; then
    echo "Error: Could not find unzipped directory"
    exit 1
fi

# Copy demo files to the unzipped directory
mkdir -p "$UNZIPPED_DIR/src/main/kotlin/com/example/javazone"
cp demo/* "$UNZIPPED_DIR/src/main/kotlin/com/example/javazone/"

# Copy claude-resources to the unzipped directory
cp -r claude-resources "$UNZIPPED_DIR/"

# Copy application-resources to src/main/resources and delete application.properties
mkdir -p "$UNZIPPED_DIR/src/main/resources"
cp application-resources/* "$UNZIPPED_DIR/src/main/resources/"
rm -f "$UNZIPPED_DIR/src/main/resources/application.properties"

# Change to the unzipped directory and open in IntelliJ IDEA
cd "$UNZIPPED_DIR" && idea .