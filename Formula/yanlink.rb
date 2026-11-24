class Yanlink < Formula
  desc "Simple tunnel CLI for exposing local services"
  homepage "https://yanlink.lvyanxiang.com"
  version "0.0.11"

  bottle do
    root_url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.11"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "f3ccd325c04db031c97c68be4b361c0b7adaf897ac3daa124ee64404d0ebff79"
    sha256 cellar: :any_skip_relocation, sequoia:       "2b2b98cc5e07b4832dd2bae4fc244728d06624c99e6bb19ac0ea5260464e7766"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "43231d5156a703f12fa418d12a501452a96ac1b1859e30bb0692494069f8457e"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "a733e99c2dde9bdab6437a20509454a3c56e432e7a310f82e09538c3a5daa0c8"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.11/yanlink_0.0.11_darwin_arm64.tar.gz"
      sha256 "69d90e145a18a182e1fde4c5a1a66ca0d3673a540e9d8c34ed1cc43ca2b8d253"
    else
      url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.11/yanlink_0.0.11_darwin_amd64.tar.gz"
      sha256 "1df6cd06ed28caeb3bdba350ff8739a88ef4a5d152af1b37353ef943abe5e488"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.11/yanlink_0.0.11_linux_arm64.tar.gz"
      sha256 "ebadbe62e7bdeb4b8bc2261a684f3ee82b31c8eda9a9b934f0e5a32e0026d183"
    else
      url "https://github.com/lvyanxiang/yanlink-releases/releases/download/v0.0.11/yanlink_0.0.11_linux_amd64.tar.gz"
      sha256 "c475eb0a56e7723d0cae1a3c0e53e0ed7b0388d7ec112c7cee86508c4f22b156"
    end
  end

  def install
    bin.install "yanlink"
  end

  test do
    assert_match "yanlink #{version}", shell_output("#{bin}/yanlink version")
  end
end
