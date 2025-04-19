#!/bin/bash

# Kill all running waybar instances
pkill -x waybar

# Start a new waybar instance
waybar &

