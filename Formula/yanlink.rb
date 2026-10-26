class Yanlink < Formula
  desc "Simple tunnel CLI for exposing local services"
  homepage "https://yanlink.lvyanxiang.com"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lvyanxiang/YanLink/releases/download/v0.0.1/yanlink_0.0.1_darwin_arm64.tar.gz"
      sha256 "57377ea165c0d689df7143a3323cccfd8fd035f5f3fcc3244d3b5d92f583a9e3"
    else
      url "https://github.com/lvyanxiang/YanLink/releases/download/v0.0.1/yanlink_0.0.1_darwin_amd64.tar.gz"
      sha256 "c96a2f3b491da17da48259b506358aff1ccc62f3adff057dd0189ed8799c8c87"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lvyanxiang/YanLink/releases/download/v0.0.1/yanlink_0.0.1_linux_arm64.tar.gz"
      sha256 "8d6684d484b5d1fe7749b104dc2cddfef7cd8e52ab7fe1a3c38ee4a2f57dd9ff"
    else
      url "https://github.com/lvyanxiang/YanLink/releases/download/v0.0.1/yanlink_0.0.1_linux_amd64.tar.gz"
      sha256 "dc9afe4d5d74a35e44cf603f6ce17bef07cebf4d867fe6027b6cc2f3b2704429"
    end
  end

  def install
    bin.install "yanlink"
  end

  test do
    assert_match "yanlink #{version}", shell_output("#{bin}/yanlink version")
  end
end
