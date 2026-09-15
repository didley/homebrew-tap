class EnforcedThought < Formula
  desc "Claude Code hook that gates prompts behind a stated problem/hypothesis checkpoint"
  homepage "https://github.com/didley/enforced-thought"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/didley/enforced-thought/releases/download/v0.1.0/enforced-thought_0.1.0_darwin_amd64.tar.gz"
      sha256 "7bdf8324ed8d7135da72534b8df9edca3fa73b887f7e30e52cbec360c116c202"
    end
    if Hardware::CPU.arm?
      url "https://github.com/didley/enforced-thought/releases/download/v0.1.0/enforced-thought_0.1.0_darwin_arm64.tar.gz"
      sha256 "395101f55757d73a52c26ad1537257f503443ca85c7e099ab4ed085952b750ad"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/didley/enforced-thought/releases/download/v0.1.0/enforced-thought_0.1.0_linux_amd64.tar.gz"
      sha256 "4121653873d1259c5f259dff37b6e366f9557d7189f2171985bf342ae9356b22"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/didley/enforced-thought/releases/download/v0.1.0/enforced-thought_0.1.0_linux_arm64.tar.gz"
      sha256 "d1e36af7eabf68ae4b5de26fab04c7facaf7e0c51ddb69456d55a58b83d668fc"
    end
  end

  def install
    bin.install "think"
    bin.install_symlink "think" => "tnk"
  end

  test do
    system "#{bin}/think", "status"
  end
end
