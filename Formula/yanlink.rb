class Yanlink < Formula
  desc "Simple tunnel CLI for exposing local services"
  homepage "https://yanlink.lvyanxiang.com"
  version "0.0.12"

  bottle do
    root_url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.12"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "18f65f78d58bdf53bad9365892287244813accd295971b47ee2b7f8dcf4f94ea"
    sha256 cellar: :any_skip_relocation, sequoia:       "cb41fd77b3c44ea1c14e92a0646cf73c112dad21d5ae81aef293ac56b0d2bb06"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "b81d82576229cfbfe20b3c3c4b36da2907d3f922bb6ada3412e908be20c50156"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "54b470182d0d65f314ac1657667a7ee4f806f3d77ae1022472613f0112dcf1d4"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.12/yanlink_0.0.12_darwin_arm64.tar.gz"
      sha256 "732957e7924ff79fb5b1d5034efa87a856a2a8b1665fa676e6c1226841c8c43c"
    else
      url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.12/yanlink_0.0.12_darwin_amd64.tar.gz"
      sha256 "7d66c552b283a975afa49da02e69e23629361a70584c7e0731986aaa94ad9ae3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.12/yanlink_0.0.12_linux_arm64.tar.gz"
      sha256 "8cc41dd7253ac2a8d93b05a2548808ea41d2b33133e33a8655102f97e0b976b2"
    else
      url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.12/yanlink_0.0.12_linux_amd64.tar.gz"
      sha256 "5bd535fbd19b83eff6b6fa3d147e555eaa99838eff45e305a083c0cca0750ce9"
    end
  end

  def install
    bin.install "yanlink"
  end

  test do
    assert_match "yanlink #{version}", shell_output("#{bin}/yanlink version")
  end
end
