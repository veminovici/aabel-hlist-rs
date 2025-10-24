# Aabel HList Rust Library

[![CI](https://github.com/veminovici/aabel-hlist-rs/workflows/CI/badge.svg)](https://github.com/veminovici/aabel-hlist-rs/actions)
[![Crates.io](https://img.shields.io/crates/v/aabel-hlist-rs.svg)](https://crates.io/crates/aabel-hlist-rs)
[![Documentation](https://docs.rs/aabel-hlist-rs/badge.svg)](https://docs.rs/aabel-hlist-rs)
[![License: MIT OR Apache-2.0](https://img.shields.io/badge/License-MIT%20OR%20Apache--2.0-blue.svg)](https://opensource.org/licenses/MIT)
[![Rust](https://img.shields.io/badge/rust-1.70+-orange.svg)](https://www.rust-lang.org)
[![no_std](https://img.shields.io/badge/no__std-yes-blue.svg)](https://github.com/rust-lang/rfcs/blob/master/text/1180-std-optional.md)

A Rust library for working with heterogeneous lists (HLists).

## Overview

This library provides type-safe operations on heterogeneous lists, allowing you to work with lists containing elements of different types while maintaining compile-time type safety.

## Features

- Type-safe heterogeneous list operations
- Compile-time type checking
- Zero-cost abstractions
- `no_std` compatible

## Usage

Add this to your `Cargo.toml`:

```toml
[dependencies]
aabel-hlist-rs = "0.1.0"
```

## Development

### Prerequisites

- Rust 1.70+ (stable, beta, or nightly)
- `cargo-make` (for development tasks)

### Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/veminovici/aabel-hlist-rs.git
   cd aabel-hlist-rs
   ```

2. Install development dependencies:
   ```bash
   cargo install cargo-make
   ```

3. Install git hooks (optional but recommended):
   ```bash
   make install-hooks
   # or
   ./scripts/install-hooks.sh
   ```

   Or setup the complete development environment:
   ```bash
   make setup
   ```

### Git Hooks

The project includes a pre-commit hook that automatically runs validation checks before each commit:

- **Code formatting** - Ensures code follows Rust formatting standards
- **Clippy lints** - Catches common Rust issues and style problems
- **Tests** - Runs all tests to ensure nothing is broken
- **Compilation** - Verifies the code compiles successfully
- **Security audit** - Checks for known vulnerabilities (if cargo-audit is installed)

The hook will prevent commits if any validation fails, helping maintain code quality.

### Development Commands

The project includes a Makefile with common development tasks:

```bash
# Run all pre-commit validations
make check

# Format code
make fmt

# Run clippy lints
make clippy

# Run tests
make test

# Build the project
make build

# Run all checks (fmt, clippy, test)
make all
```

### Manual Commands

You can also run the commands directly with cargo:

```bash
# Format code
cargo fmt

# Run clippy
cargo clippy

# Run tests
cargo test

# Build
cargo build

# Build with all features
cargo build --all-features
```

## Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Make your changes
4. Run the pre-commit checks (`make check`)
5. Commit your changes (`git commit -m 'Add some amazing feature'`)
6. Push to the branch (`git push origin feature/amazing-feature`)
7. Open a Pull Request

## License

This project is licensed under either of

- Apache License, Version 2.0, ([LICENSE-APACHE](LICENSE-APACHE) or http://www.apache.org/licenses/LICENSE-2.0)
- MIT license ([LICENSE-MIT](LICENSE-MIT) or http://opensource.org/licenses/MIT)

at your option.

## Status

This project is in early development. The API is not yet stable and may change between versions.

## Changelog

### 0.1.0
- Initial release
- Basic project structure
- CI/CD pipeline setup
