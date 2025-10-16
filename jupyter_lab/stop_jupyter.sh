#!/bin/bash

if tmux has-session -t jupyter 2>/dev/null; then
    tmux kill-session -t jupyter
    echo "Jupyter Lab stopped"
else
    echo "Jupyter session not found"
fi