class Yanlink < Formula
  desc "Simple tunnel CLI for exposing local services"
  homepage "https://yanlink.lvyanxiang.com"
  version "0.0.10"

  bottle do
    root_url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.10"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "a38902f3ca7f04431dfa8896be02d43af573611467ec524e298b1431419fb613"
    sha256 cellar: :any_skip_relocation, sequoia:       "557a4fbf83efb545b0a90f1ec4169456879ae278ada7f3f4e3bee87d37a74d1c"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "d6a0f6cb9604283de0bd891f7d462c030763dc1569a57011a6bba447632395fb"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "df64fbbc745acf06e182af0fb579ecf63f16388c09aa50f6793bce930e08cc18"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.10/yanlink_0.0.10_darwin_arm64.tar.gz"
      sha256 "e138eafa9e87e2e43bde7f08e5fe37c1d685848133f08c86ae8225d3c424bce8"
    else
      url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.10/yanlink_0.0.10_darwin_amd64.tar.gz"
      sha256 "ac333a610a0375b24bd991de07beaae910f00de707ca8beae503fc810487ea93"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.10/yanlink_0.0.10_linux_arm64.tar.gz"
      sha256 "70b4ef2596c013906a59a49240fe140a1066b29c1ab1fad0728bc0bdf294e3a0"
    else
      url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.10/yanlink_0.0.10_linux_amd64.tar.gz"
      sha256 "939e6d1c2cf896d20be7107b8b831a322f096cf4d494348931a466c4f4ce55ee"
    end
  end

  def install
    bin.install "yanlink"
  end

  test do
    assert_match "yanlink #{version}", shell_output("#{bin}/yanlink version")
  end
end
