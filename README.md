# homebrew-selah-tap

Homebrew tap for [selah](https://github.com/jeremycastanza/selah) — a Bible TUI.

## Prerequisites

You need a GitHub Personal Access Token (PAT) with read access to this repository.

- **Classic PAT:** `repo` scope
- **Fine-grained PAT:** `contents: read` on `jeremycastanza/homebrew-selah-tap`

## Setup

```sh
# Add to your ~/.zshrc (or ~/.bashrc)
export HOMEBREW_GITHUB_API_TOKEN="ghp_your_token_here"
```

Reload your shell or run `source ~/.zshrc`.

## Install

```sh
brew tap jeremycastanza/selah-tap
brew install selah
```

## Update

```sh
brew upgrade selah
```

## Verify

```sh
lexicon-dex --version
lexicon-dex list
```
