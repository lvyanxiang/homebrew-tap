class Yanlink < Formula
  desc "Simple tunnel CLI for exposing local services"
  homepage "https://yanlink.lvyanxiang.com"
  version "0.0.2"

  bottle do
    root_url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.2"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "5f94d5fb1e1d394f61864cf2c515308b98e3783c89e1539d5849b31235383ad4"
    sha256 cellar: :any_skip_relocation, sequoia:       "f4ba9c6eed92f157f2dbef69219cd03f463a45612044a603f083188b5bccae61"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "f6921fd51269b4d153a5c397e6cc9aa83b2c307bbcf135dd8cee2fd667461db6"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "bc93d248bf9a5d9c1399f23c18ef93390dc10ccde30c78bb5a2aa5bd88c3d857"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.2/yanlink_0.0.2_darwin_arm64.tar.gz"
      sha256 "8656accc2e76ba76da717e701646a564b3b26d969ce208ccfa2654e3e16c7e51"
    else
      url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.2/yanlink_0.0.2_darwin_amd64.tar.gz"
      sha256 "54e513a110d1dc355b39b33264eca2f8a1884bc6092b875f575b8536453f0106"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.2/yanlink_0.0.2_linux_arm64.tar.gz"
      sha256 "fe119b07695552e357f41b0158e626d6c8ca86cc4f9db4a9d566f35ad677a804"
    else
      url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.2/yanlink_0.0.2_linux_amd64.tar.gz"
      sha256 "72aa925e737bcc7f578e086ab8ac59faa032fe6da4be1cec4873c1844fe212b4"
    end
  end

  def install
    bin.install "yanlink"
  end

  test do
    assert_match "yanlink #{version}", shell_output("#{bin}/yanlink version")
  end
end
