class Yanlink < Formula
  desc "Simple tunnel CLI for exposing local services"
  homepage "https://yanlink.lvyanxiang.com"
  version "0.0.3"

  bottle do
    root_url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.3"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "6ac800db0f191c4cf8b7197c39451dac827f48581f16b9253dd516efeb97452f"
    sha256 cellar: :any_skip_relocation, sequoia:       "147d4bb30c10cb77bb2cfb3886dddc1ada9f30c5655a879df6261b80aa111cb5"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "1c2be1779599712f3ce861597df7d5fb805e90b9505b50f6a8f62b64282b8ef9"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "b2b9519395a5d37aaca373e3ec5cd85e6d8f39f6b4aeeb9e6ef69fd9e7db74f0"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.3/yanlink_0.0.3_darwin_arm64.tar.gz"
      sha256 "749f365f3c8de4adfee874090afc19fbb99d7c80d8ea2b08013231dcb274f16f"
    else
      url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.3/yanlink_0.0.3_darwin_amd64.tar.gz"
      sha256 "95c5632168571c1e8a981df6ca4d0432cfc5a1e54e93bafc97deaecf1614af98"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.3/yanlink_0.0.3_linux_arm64.tar.gz"
      sha256 "66d983fe24849051bd374bbdce3326e3cd90e3c14dfa050afa1f4736c19338fd"
    else
      url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.3/yanlink_0.0.3_linux_amd64.tar.gz"
      sha256 "de4c4b0a2ecf6880da1f0d39e897383ada16f6a9d32a8100f873503e2a8a8884"
    end
  end

  def install
    bin.install "yanlink"
  end

  test do
    assert_match "yanlink #{version}", shell_output("#{bin}/yanlink version")
  end
end
