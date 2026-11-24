class Yanlink < Formula
  desc "Simple tunnel CLI for exposing local services"
  homepage "https://yanlink.lvyanxiang.com"
  version "0.1.0"

  bottle do
    root_url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.1.0"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "c2d3bb291034e8074d1a89c873d6f46e78b0dc70e2e8449debe05c57017a2b4d"
    sha256 cellar: :any_skip_relocation, sequoia:       "2bee0c7c0e98378a157fe28935d7243ed128a1837d77364e019bb26152c876d1"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "6299d1f9264e32337ac42589c38cba5eb5b9ac41a1efe29ae4ada79fab8e04cc"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "9802f38639189552dcf1a3c3c49ca04a7db4568339876674ac43b440c52ac983"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.1.0/yanlink_0.1.0_darwin_arm64.tar.gz"
      sha256 "53cb9bd811cdf6222a223388527b868e6127856cf6bb95691f34a2c5b8e7dad2"
    else
      url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.1.0/yanlink_0.1.0_darwin_amd64.tar.gz"
      sha256 "5da668472a6c57648375f8a330c090e0b64fad7a1e6a68fb3022c324b86b68ff"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.1.0/yanlink_0.1.0_linux_arm64.tar.gz"
      sha256 "4ffb36f6062f802dba1a02c8cb55acf5c5773a27d3592485b15e5c30a9b24410"
    else
      url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.1.0/yanlink_0.1.0_linux_amd64.tar.gz"
      sha256 "f3cf5924c135c51baf4f7e9ccb6a83fee198b43e3c23ba422e7f7fd402a5f892"
    end
  end

  def install
    bin.install "yanlink"
  end

  test do
    assert_match "yanlink #{version}", shell_output("#{bin}/yanlink version")
  end
end
