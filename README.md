# homebrew-csp

Homebrew tap for [csp-tarayici](https://github.com/kpostaagasi/csp-tarayici) — a cash-secured
put scanner with a curses TUI, Python stdlib only at runtime, no API keys.

```bash
brew trust kpostaagasi/csp                 # required for third-party taps on Homebrew 6+
brew install kpostaagasi/csp/csp-tarayici
csp --universe --tui
```

`brew upgrade csp-tarayici` to update, `brew uninstall csp-tarayici` to remove.

Verified on Homebrew 6.0.22 / macOS arm64 at v0.2.2: `brew install`, `brew test` and
`brew audit --strict --online` all pass.
