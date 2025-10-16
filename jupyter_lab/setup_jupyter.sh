#!/bin/bash

echo "Setting up Jupyter Lab in home directory..."

# Create necessary directories
mkdir -p ~/jupyter/notebooks
mkdir -p ~/jupyter/logs

# Install Jupyter Lab in user space
echo "Installing Jupyter Lab..."
pip install --user jupyterlab

# Generate default config
jupyter lab --generate-config

echo "Jupyter Lab installed successfully!"