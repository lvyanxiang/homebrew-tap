class Yanlink < Formula
  desc "Simple tunnel CLI for exposing local services"
  homepage "https://yanlink.lvyanxiang.com"
  version "0.0.6"

  bottle do
    root_url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.6"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "7c1ee39715065c8a0b6132cd69b3c31ccacdb4058bb3de71ca0c4cf1d314ce47"
    sha256 cellar: :any_skip_relocation, sequoia:       "6dc38002c2c5e720abdb1fe1c61b26a4199775e07237a4de6b365badff3e9bb2"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "f55bf1d83107a1a9cadbd1a49768035a8e209079fe5b0883c42ae9592f5e4291"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "8df3eb4cc042624f901e93677f8f20b2f156f024f4644b108a26cdbaecefa628"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.6/yanlink_0.0.6_darwin_arm64.tar.gz"
      sha256 "d3b6768130c280de7f1b5068129ba96a8e4ffd5075574a92b7d261b45a05ad54"
    else
      url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.6/yanlink_0.0.6_darwin_amd64.tar.gz"
      sha256 "732ca53250d00b7d0ff2ba1b753204ff57d780ba28180d0e59014a0bb47fc020"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.6/yanlink_0.0.6_linux_arm64.tar.gz"
      sha256 "862717b2e3e3a4d3576cace225516224991b14cfa96539b6dfb2941e3bc46845"
    else
      url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.6/yanlink_0.0.6_linux_amd64.tar.gz"
      sha256 "1eb24b54206a7f3e7849458bef60f5ce5a9efb324cd078bf6f1bc0d81551ee51"
    end
  end

  def install
    bin.install "yanlink"
  end

  test do
    assert_match "yanlink #{version}", shell_output("#{bin}/yanlink version")
  end
end
