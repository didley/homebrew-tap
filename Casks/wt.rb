# Template for the `wt` cask in didley/homebrew-tap. The release workflow
# fills in the version and zip checksum placeholders and pushes the result
# to Casks/wt.rb in the tap. `#{version}`/`#{appdir}` are Ruby
# interpolations evaluated by Homebrew, not placeholders.
cask "wt" do
  version "0.2.2"
  sha256 "c85e9b9ac2238ad44d1cca749ce42e809c30e990590b0b3d2fa3ba8466b3b2dc"

  url "https://github.com/didley/wt/releases/download/v#{version}/wt_#{version}_darwin_universal.zip"
  name "wt"
  desc "Ergonomic git worktrees — desktop app and CLI"
  homepage "https://github.com/didley/wt"

  app "wt.app"
  binary "wt"

  caveats <<~EOS
    wt.app is ad-hoc signed, not notarized. macOS blocks the first launch;
    allow it under System Settings → Privacy & Security → Open Anyway, or
    clear the quarantine flag:

      xattr -dr com.apple.quarantine "#{appdir}/wt.app"

    Note: this cask and the didley/tap/wt-cli formula both install a `wt`
    binary. Homebrew's `conflicts_with` doesn't support cask/formula
    conflicts, so installing both will clobber the binary — install only one.
  EOS
end
