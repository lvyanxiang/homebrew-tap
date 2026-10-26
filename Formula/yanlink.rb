class Yanlink < Formula
  desc "Simple tunnel CLI for exposing local services"
  homepage "https://yanlink.lvyanxiang.com"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.1/yanlink_0.0.1_darwin_arm64.tar.gz"
      sha256 "228b70405a6ee1df26e7a9479cd320d8eea2f86dc43bbb829619a834aae258b4"
    else
      url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.1/yanlink_0.0.1_darwin_amd64.tar.gz"
      sha256 "c42f1fec81f8dd9595ed203a8c8707392062a55f1b16185e9db8ba6bc3154bd8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.1/yanlink_0.0.1_linux_arm64.tar.gz"
      sha256 "a71349654d6fcbe2f73e04a83a4fe645a5c4a7f9a619d1d6bc9da6059ad03822"
    else
      url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.1/yanlink_0.0.1_linux_amd64.tar.gz"
      sha256 "88fbb06028ce0d354692124d0d0f0c37002a0b206e61f6b4c17397d8cb8f6822"
    end
  end

  def install
    bin.install "yanlink"
  end

  test do
    assert_match "yanlink #{version}", shell_output("#{bin}/yanlink version")
  end
end
