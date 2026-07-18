# Template for the `wt` cask in didley/homebrew-tap. The release workflow
# fills in the version and zip checksum placeholders and pushes the result
# to Casks/wt.rb in the tap. `#{version}`/`#{appdir}` are Ruby
# interpolations evaluated by Homebrew, not placeholders.
cask "wt" do
  version "0.3.0"
  sha256 "afaaaf3a1099d8ef36133012ee3b78e81a4de6ab6de6e5683e4290b34b767f62"

  url "https://github.com/didley/wt/releases/download/v#{version}/wt_#{version}_darwin_universal.zip"
  name "wt"
  desc "Ergonomic git worktrees — desktop app and CLI"
  homepage "https://github.com/didley/wt"

  app "wt.app"
  binary "wt"

  caveats <<~EOS
    Note: this cask and the didley/tap/wt-cli formula both install a `wt`
    binary. Homebrew's `conflicts_with` doesn't support cask/formula
    conflicts, so installing both will clobber the binary — install only one.
  EOS
end
