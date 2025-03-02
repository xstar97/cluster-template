#!/bin/bash

# Function to display usage
usage() {
    echo "Usage: $0 --dir <directory>"
    exit 1
}

# Parse the command line argument for --dir
while [[ $# -gt 0 ]]; do
    case $1 in
        --dir)
            DIR="$2"
            shift 2
            ;;
        *)
            usage
            ;;
    esac
done

# If --dir is not provided, display usage
if [ -z "$DIR" ]; then
    usage
fi

# Check if the specified directory exists and if it contains a .git directory
if [ -d "$DIR" ] && [ -d "$DIR/.git" ]; then
    # If .git directory exists, perform git pull
    echo "Directory '$DIR' exists and contains a git repository. Pulling latest changes..."
    cd "$DIR"
    git pull
else
    # If the directory does not exist or is not a git repository, clone the repository
    echo "Directory '$DIR' does not exist or is not a git repository. Cloning repository..."
    git clone https://github.com/xstar97/cluster-scripts "$DIR"
fi
