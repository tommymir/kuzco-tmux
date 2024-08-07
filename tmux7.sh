#!/bin/bash

# Source the config file
source kuzco_config.txt

# Define the command to run
COMMAND="kuzco worker start --worker $WORKER_ID --code $WORKER_CODE"

# Start worker 1
tmux new-session -d -s worker1 "$COMMAND"
# Start worker 2
tmux new-session -d -s worker2 "$COMMAND"
# Start worker 3
tmux new-session -d -s worker3 "$COMMAND"
# Start worker 4
tmux new-session -d -s worker4 "$COMMAND"
# Start worker 5
tmux new-session -d -s worker5 "$COMMAND"
# Start worker 6
tmux new-session -d -s worker6 "$COMMAND"
# Start worker 7
tmux new-session -d -s worker7 "$COMMAND"
echo "Started 7 kuzco workers in parallel tmux sessions."
