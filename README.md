# Pylon Homebrew tap

Homebrew packages for Pylon tools.

## Install the Pylon CLI

```sh
brew install pylon-labs/tap/pylon
```

The CLI is experimental. See [pylon-cli](https://github.com/pylon-labs/pylon-cli) for usage and authentication.

## Upgrade or uninstall

```sh
brew update
brew upgrade pylon-labs/tap/pylon
brew uninstall pylon
```

If you previously installed `pylon` using the shell installer or a manual download, remove that copy from your PATH after the Homebrew installation succeeds. `which -a pylon` shows every installed copy. Homebrew does not manage credentials saved by the CLI.

## Maintaining packages

Each tool has its own formula under `Formula/`. This tap installs prebuilt release archives; it does not build or publish the tools themselves.

To update the CLI:

1. Publish the CLI release through its manual release workflow.
2. Verify the immutable release with `gh release verify <tag> --repo pylon-labs/pylon-cli`.
3. Update `version` and all four platform checksums in `Formula/pylon.rb`. Verify downloaded archives with `gh release verify-asset` before using their hashes. Keep version-specific release URLs.
4. Open a PR. Installation and `brew test` must pass on Apple Silicon Mac, Intel Mac, and Linux before merging.

Formula updates are reviewed and merged by a maintainer. They are not automatically published by the CLI release workflow. No cross-repository publishing token is configured.
