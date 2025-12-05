#!/usr/bin/env bash

# Close any existing eww daemon
killall eww 2>/dev/null || echo "No eww daemon was running"

# Wait a moment to ensure the process is fully terminated
sleep 0.5

# Start the eww daemon if it's not running
eww daemon

# Wait a moment for the daemon to initialize
sleep 1

# Open the clock widget
eww open clock

# Optional: Print status information
echo "Clock widget launched successfully!"
echo "If you don't see the widget, run 'eww logs' to check for errors"
