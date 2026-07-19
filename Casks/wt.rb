# Template for the `wt` cask in didley/homebrew-tap. The release workflow
# fills in the version and zip checksum placeholders and pushes the result
# to Casks/wt.rb in the tap. `#{version}`/`#{appdir}` are Ruby
# interpolations evaluated by Homebrew, not placeholders.
cask "wt" do
  version "0.3.3"
  sha256 "33fbcbcf38687c31090e305b4f7e47e9ec25c7eba4c99d4c8e4bdecadaa61ab6"

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
