# Madstone Tech Homebrew Tap

Official Homebrew tap for Madstone Tech tools.

## Installation

```bash
# Add the tap
brew tap madstone-tech/tap

# Install ason
brew install ason
```

## Available Formulae

- **ason**: A powerful project scaffolding tool that transforms templates into fully-formed projects

## Usage

After installation, you can use the tools directly:

```bash
ason --help
```

## Maintenance

This tap is automatically maintained by [GoReleaser](https://goreleaser.com/). When a new release is created in the main repository, GoReleaser automatically:
- Updates the formula with the new version
- Calculates and updates SHA256 checksums
- Commits and pushes the changes to this tap

Manual formula edits will be overwritten on the next release.
