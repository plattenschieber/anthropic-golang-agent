#!/bin/bash

# Prime Number Visualization Tool Setup Script
# This script sets up a Python project with pixi for prime number visualization

set -e  # Exit on any error

PROJECT_NAME="prime-viz"
PROJECT_DIR="./$PROJECT_NAME"

echo "🚀 Setting up Prime Number Visualization Tool..."

# Create project directory
if [ -d "$PROJECT_DIR" ]; then
    echo "⚠️  Directory $PROJECT_NAME already exists. Removing it..."
    rm -rf "$PROJECT_DIR"
fi

mkdir -p "$PROJECT_DIR"
cd "$PROJECT_DIR"

echo "📦 Initializing pixi project..."

# Initialize pixi project
pixi init --channel conda-forge

echo "📚 Adding dependencies..."

# Add Python dependencies
pixi add python=3.11
pixi add matplotlib
pixi add numpy
pixi add pillow
pixi add scipy

echo "📝 Creating project files..."

# Go back to the parent directory to use our tool functions
cd ..

echo "✅ Project setup complete!"
echo "📍 Project location: $PROJECT_DIR"
echo ""
echo "To use the project:"
echo "  cd $PROJECT_NAME"
echo "  pixi shell"
echo "  python prime_visualizer.py"
echo ""
echo "Or run directly:"
echo "  cd $PROJECT_NAME && pixi run python prime_visualizer.py"