# Aabel HList Rust Library Makefile
# Provides convenient commands for development and CI

.PHONY: help check fmt clippy test build clean all install-tools

# Default target
help:
	@echo "Available targets:"
	@echo "  check     - Run all pre-commit validations (fmt, clippy, test)"
	@echo "  fmt       - Format code with rustfmt"
	@echo "  clippy    - Run clippy lints"
	@echo "  test      - Run tests"
	@echo "  build     - Build the project"
	@echo "  clean     - Clean build artifacts"
	@echo "  all       - Run fmt, clippy, and test"
	@echo "  install-tools - Install required development tools"

# Install development tools
install-tools:
	@echo "Installing development tools..."
	cargo install cargo-make
	cargo install cargo-audit

# Run all pre-commit validations
check: fmt clippy test
	@echo "All checks passed!"

# Format code
fmt:
	@echo "Running rustfmt..."
	cargo fmt --all -- --check

# Fix formatting
fmt-fix:
	@echo "Fixing formatting..."
	cargo fmt --all

# Run clippy
clippy:
	@echo "Running clippy..."
	cargo clippy --all-targets --all-features -- -D warnings

# Run tests
test:
	@echo "Running tests..."
	cargo test --verbose

# Build the project
build:
	@echo "Building project..."
	cargo build --verbose

# Build with all features
build-all:
	@echo "Building with all features..."
	cargo build --all-features --verbose

# Clean build artifacts
clean:
	@echo "Cleaning build artifacts..."
	cargo clean

# Run all checks (fmt, clippy, test)
all: fmt clippy test
	@echo "All checks completed!"

# Run security audit
audit:
	@echo "Running security audit..."
	cargo audit

# Generate documentation
doc:
	@echo "Generating documentation..."
	cargo doc --no-deps --open

# Check if code compiles without warnings
check-warnings:
	@echo "Checking for warnings..."
	cargo check --all-targets --all-features

# Run benchmarks (if any)
bench:
	@echo "Running benchmarks..."
	cargo bench

# Check for unused dependencies
unused-deps:
	@echo "Checking for unused dependencies..."
	cargo +nightly udeps
