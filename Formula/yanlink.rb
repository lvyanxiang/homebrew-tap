class Yanlink < Formula
  desc "Simple tunnel CLI for exposing local services"
  homepage "https://yanlink.lvyanxiang.com"
  version "0.0.1"

  bottle do
    root_url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.1"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "440e56a0ddd3df6290d53adaacfc415a63d132c82490c245d840bd8cb7c98e15"
    sha256 cellar: :any_skip_relocation, sequoia:       "97063b063a09a4b6edf3f9c29c242cf7fcd5091760711a58dc7a3ad535b603d0"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "ef8c5b633b869a975ccdabf0cf8709b87d8855f4a5844a67e43c7e4ae2a90586"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "ed70a4fcf529dfcc066458c1722334b74c65cf6b2d45b1a5fecbfa90751fe2fc"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.1/yanlink_0.0.1_darwin_arm64.tar.gz"
      sha256 "631a156d5f356374a0566a312d856f7d081f5579ad656d5f78b28fa959941d58"
    else
      url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.1/yanlink_0.0.1_darwin_amd64.tar.gz"
      sha256 "0738e952a7cb0f472b266e551c8a425bdf7b2e37f2e5cb365d03d412fc41e70c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.1/yanlink_0.0.1_linux_arm64.tar.gz"
      sha256 "6baf41a7a026a31c141049cc20aaadf0da5c78b7e44d28502c4cd5effb96f098"
    else
      url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.1/yanlink_0.0.1_linux_amd64.tar.gz"
      sha256 "4625fa270be890192bc7e5f9a29e9116b2541a94f043255432827b0716875d0f"
    end
  end

  def install
    bin.install "yanlink"
  end

  test do
    assert_match "yanlink #{version}", shell_output("#{bin}/yanlink version")
  end
end
