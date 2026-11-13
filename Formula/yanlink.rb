class Yanlink < Formula
  desc "Simple tunnel CLI for exposing local services"
  homepage "https://yanlink.lvyanxiang.com"
  version "0.0.7"

  bottle do
    root_url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.7"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "0124398a464f8749c7f3b20fcb14a5111af64e0f3b34a63a0466ea36ef394cd0"
    sha256 cellar: :any_skip_relocation, sequoia:       "75b7fdb1e6e8e5226a093a503e533f536d0169506788d13ed77d2a47de257072"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "7e183f334b32a0c26941e02e23adfb6edde966f15c32e71aee18492c0d6aac0e"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "9f14884a7263073b6e9c29cbb91cb0a44c275ca996a35dbd4653247fe567ee48"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.7/yanlink_0.0.7_darwin_arm64.tar.gz"
      sha256 "2637de5052d7b5372fef764d85b7c3bf6a0dfbc94ba0dbd1ad8f3814cf2d78b9"
    else
      url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.7/yanlink_0.0.7_darwin_amd64.tar.gz"
      sha256 "5b2e78acc43df36417efbb6df2912beba692445f5930b9cdb18de28fead7561d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.7/yanlink_0.0.7_linux_arm64.tar.gz"
      sha256 "c816dbf0799d13cffd6b6ca306b9aa9ed2f7a9dbeb6f76702bc1aa3d9f3c1ed2"
    else
      url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.7/yanlink_0.0.7_linux_amd64.tar.gz"
      sha256 "8eea2bf73129a6b9f8ee797e1fba39c592897981309ba6e20a3b804ca9a5ec64"
    end
  end

  def install
    bin.install "yanlink"
  end

  test do
    assert_match "yanlink #{version}", shell_output("#{bin}/yanlink version")
  end
end
