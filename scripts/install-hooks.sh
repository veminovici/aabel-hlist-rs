#!/bin/bash
# Script to install git hooks for the project

set -e

# Colors for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

print_status() {
    echo -e "${GREEN}✓${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}⚠${NC} $1"
}

# Check if we're in a git repository
if [ ! -d ".git" ]; then
    print_warning "Not in a git repository. Run 'git init' first."
    exit 1
fi

# Check if we're in a Rust project
if [ ! -f "Cargo.toml" ]; then
    print_warning "Not in a Rust project directory (Cargo.toml not found)"
    exit 1
fi

# Create hooks directory if it doesn't exist
mkdir -p .git/hooks

# Copy pre-commit hook
if [ -f "scripts/pre-commit" ]; then
    cp scripts/pre-commit .git/hooks/pre-commit
    chmod +x .git/hooks/pre-commit
    print_status "Pre-commit hook installed successfully"
else
    print_warning "Pre-commit hook script not found in scripts/"
    exit 1
fi

print_status "Git hooks installation completed!"
print_warning "The pre-commit hook will now run automatically on every commit"
