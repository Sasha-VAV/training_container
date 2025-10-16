#!/bin/bash

# Check if conda environment is activated
if ! command -v jupyter &> /dev/null; then
    echo "Error: Jupyter not found. Please activate your conda environment first."
    echo "Run: conda activate conda310"
    exit 1
fi

# Check if already running in tmux
if tmux has-session -t jupyter 2>/dev/null; then
    echo "Jupyter is already running in tmux. Attach with: tmux attach -t jupyter"
    exit 1
fi

# Create new tmux session and start Jupyter
tmux new-session -d -s jupyter -c ~/jupyter/notebooks
tmux send-keys -t jupyter "jupyter lab --config=$HOME/.jupyter/jupyter_lab_config.py" C-m

echo "Jupyter Lab started in tmux session 'jupyter'"
echo "Attach to session: tmux attach -t jupyter"
echo "Detach from session: Ctrl+B, then D"