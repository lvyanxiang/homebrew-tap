class Yanlink < Formula
  desc "Simple tunnel CLI for exposing local services"
  homepage "https://yanlink.lvyanxiang.com"
  version "0.0.8"

  bottle do
    root_url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.8"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "d350ab830d382eaba0883477b674e2a1a55e5b09d6c8f1ec9c5c05eebeb08fc7"
    sha256 cellar: :any_skip_relocation, sequoia:       "f2a07a3ac5469fbd8f28541c367cdd51cf9a1446f01e62170c86301eb8c4b270"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "c3b5d94d70f5fdbbcceab2d0f671586051bd072134443529874b99ee32f72b3f"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "d52c96215e7d4a0478c683f6cf291d3bbc74fa494e51db397b4addfd384432ba"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.8/yanlink_0.0.8_darwin_arm64.tar.gz"
      sha256 "82406bdf4a33a4e9ca9ac608b756fd5165d01bb810d528a852b9348d3feec3fb"
    else
      url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.8/yanlink_0.0.8_darwin_amd64.tar.gz"
      sha256 "881ef4d2f0819e5f00c9a9dac9426df6dcafe7e0c118a130bd6d40e65fc47130"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.8/yanlink_0.0.8_linux_arm64.tar.gz"
      sha256 "2ac722c333dace878d938b1e663c64011c78e63b80fc519352b51e327ef96c59"
    else
      url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.8/yanlink_0.0.8_linux_amd64.tar.gz"
      sha256 "70b35e8e527710386f1d7c47aa00e12fe929b517a0c833ec7940c4cd281a01ab"
    end
  end

  def install
    bin.install "yanlink"
  end

  test do
    assert_match "yanlink #{version}", shell_output("#{bin}/yanlink version")
  end
end
