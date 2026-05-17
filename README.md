# homebrew-envswitch

Homebrew tap for [envSwitch](https://github.com/dacj4n/envSwitch) — macOS only.

## Install

```bash
brew tap dacj4n/envswitch
brew install envswitch
envswitch init zsh && source ~/.zshrc
```

## Updating SHA256 after a release

```bash
curl -sL https://github.com/dacj4n/envSwitch/releases/download/v<VERSION>/envswitch-macos-arm64.tar.gz | shasum -a 256
```

Update `Formula/envswitch.rb`, bump version + sha256, commit, push.
