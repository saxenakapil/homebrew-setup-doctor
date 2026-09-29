# homebrew-setup-doctor

Homebrew tap for [setup-doctor](https://github.com/saxenakapil/setup-doctor): score and improve your AI coding agent setup. Local-only, open source, free.

## Install

```bash
brew install saxenakapil/setup-doctor/setup-doctor
```

Or:

```bash
brew tap saxenakapil/setup-doctor
brew install setup-doctor
```

Or, in a `brew bundle` `Brewfile`:

```ruby
tap "saxenakapil/setup-doctor"
brew "setup-doctor"
```

## What this formula does

Installs the real, published `setup-doctor` npm package (`depends_on "node"`, then `npm install` inside the formula's own prefix, with the CLI symlinked into Homebrew's `bin`). It tracks the same releases published to [npmjs.com/package/setup-doctor](https://www.npmjs.com/package/setup-doctor); this tap's own `autobump.yml` workflow checks daily and opens a pull request when a new version is published.

## Documentation

Main project docs and source: [github.com/saxenakapil/setup-doctor](https://github.com/saxenakapil/setup-doctor). `brew help`, `man brew` or [Homebrew's own documentation](https://docs.brew.sh) for tap/formula mechanics.
