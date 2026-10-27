class Yanlink < Formula
  desc "Simple tunnel CLI for exposing local services"
  homepage "https://yanlink.lvyanxiang.com"
  version "0.0.4"

  bottle do
    root_url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.4"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "8aeddca7e63e11538ead3bb62dfea6a4f7f3a5abe253584afdba4d214536d619"
    sha256 cellar: :any_skip_relocation, sequoia:       "afe249468d37a8b1160000d0c1f3f68f30f4b1a32351d4c9ff5dca99ac7e40ec"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "8de8688621bcc2a9814184ad0d8ff8bd4f2028a06d80600263b0e5e9d7987fe4"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "4fbe1c5a1430ceb877e86c249ccdcb9f5f814c722492fbb61f136a72296ea70d"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.4/yanlink_0.0.4_darwin_arm64.tar.gz"
      sha256 "e1f18e39c470eb035291372c635f6af81ec375c7ee55e593320815a33343bd3b"
    else
      url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.4/yanlink_0.0.4_darwin_amd64.tar.gz"
      sha256 "ddfd9bdf262deeb939ba0a1dc44b7723fa6c67426700e4d5574ccf596257338d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.4/yanlink_0.0.4_linux_arm64.tar.gz"
      sha256 "e68c16fb6d150815228a524f53f4a5d06119e375d5d83a7a72e65bc604a14800"
    else
      url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.4/yanlink_0.0.4_linux_amd64.tar.gz"
      sha256 "484619bd01f3e4ac01cba6d51a624c91fb3e1ef1ce9a98ef25a236a4ff861926"
    end
  end

  def install
    bin.install "yanlink"
  end

  test do
    assert_match "yanlink #{version}", shell_output("#{bin}/yanlink version")
  end
end
