# n-seiji/homebrew-tap

Homebrew cask for [just-desktops](https://github.com/n-seiji/just-desktops).

```sh
brew install --cask n-seiji/tap/just-desktops
```

The cask is updated from its release with `scripts/bump-cask.sh` in the just-desktops repository.

NovakeyR is no longer distributed here. From 0.1.3 it ships as a signed `.pkg` on [its Releases](https://github.com/n-seiji/novakey-r/releases/latest), so updates keep it in Input Sources. If you installed it from this tap, run `brew uninstall --cask novakey-r` (without `--zap`), then install the `.pkg` and add NovakeyR to Input Sources again.
