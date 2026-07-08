# Template for the `wt` cask in didley/homebrew-tap. The release workflow
# substitutes 0.2.0 and 39e7de1b1acfa3c6db846be00788754835ca6bc1b93e81ad32dd70452db03266 and pushes the result to
# Casks/wt.rb in the tap. `#{version}`/`#{appdir}` are Ruby interpolations
# evaluated by Homebrew, not placeholders.
cask "wt" do
  version "0.2.0"
  sha256 "39e7de1b1acfa3c6db846be00788754835ca6bc1b93e81ad32dd70452db03266"

  url "https://github.com/didley/wt/releases/download/v#{version}/wt_#{version}_darwin_universal.zip"
  name "wt"
  desc "Ergonomic git worktrees — desktop app and CLI"
  homepage "https://github.com/didley/wt"

  app "wt.app"
  binary "wt"

  # The wt-cli formula installs the same `wt` binary.
  conflicts_with formula: "didley/tap/wt-cli"

  caveats <<~EOS
    wt.app is ad-hoc signed, not notarized. macOS blocks the first launch;
    allow it under System Settings → Privacy & Security → Open Anyway, or
    clear the quarantine flag:

      xattr -dr com.apple.quarantine "#{appdir}/wt.app"
  EOS
end
