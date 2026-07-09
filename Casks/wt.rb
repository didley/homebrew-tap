# Template for the `wt` cask in didley/homebrew-tap. The release workflow
# fills in the version and zip checksum placeholders and pushes the result
# to Casks/wt.rb in the tap. `#{version}`/`#{appdir}` are Ruby
# interpolations evaluated by Homebrew, not placeholders.
cask "wt" do
  version "0.2.4"
  sha256 "930514e9ed15137c07123d3453a49f853ac75f07e331f90713d8b3544444fd94"

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
