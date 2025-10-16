#!/bin/bash

if tmux has-session -t jupyter 2>/dev/null; then
    echo "Jupyter Lab is RUNNING in tmux session 'jupyter'"
    echo "Attach with: tmux attach -t jupyter"
    echo "Or check logs: tail -f ~/jupyter/logs/jupyter.log"
else
    echo "Jupyter Lab is NOT running"
    echo "Start with: ./start_jupyter.sh"
fi