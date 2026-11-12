class Yanlink < Formula
  desc "Simple tunnel CLI for exposing local services"
  homepage "https://yanlink.lvyanxiang.com"
  version "0.0.5"

  bottle do
    root_url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.5"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "6d07aa049c74aa9e71f5724767fe1c7696de18ff3fc3d6a5bf3e4949bf0ea692"
    sha256 cellar: :any_skip_relocation, sequoia:       "0e4a6ad8dcd71dda9de79103b01e24313896b6790696726182f7ccfdae997f9c"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "9afb394ce00deec9e35f0919636bed1d1b3762afe51d3a616538ad16a00f8a30"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "0ad3188fe90285af9e35924803332ad073759b4c5ca338f412e86480e2b8ff3a"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.5/yanlink_0.0.5_darwin_arm64.tar.gz"
      sha256 "55b12f53408ece45979356bac34d1721d21724aed48ed7072888ccc6f9364e26"
    else
      url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.5/yanlink_0.0.5_darwin_amd64.tar.gz"
      sha256 "a7b7912cc54077e81af236be005a64dd2ffb90ce201fa374128454e845e69e2a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.5/yanlink_0.0.5_linux_arm64.tar.gz"
      sha256 "0fbec20f49554f7e514018640d9ae07ba0a35fec79490534bd2968f37f22e36e"
    else
      url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.5/yanlink_0.0.5_linux_amd64.tar.gz"
      sha256 "7de9805d5a31fae6faf59a49db31e70374c47c5fe6e5c595da7352ad50b40bdf"
    end
  end

  def install
    bin.install "yanlink"
  end

  test do
    assert_match "yanlink #{version}", shell_output("#{bin}/yanlink version")
  end
end
