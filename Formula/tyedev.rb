class Tyedev < Formula
  desc "Improve devcontainer creation"
  homepage "https://github.com/CodeMan99/tyedev"
  url "https://github.com/CodeMan99/tyedev/archive/refs/tags/v0.4.3.tar.gz"
  sha256 "17b62c9f85b939bc223d10db1eeb99fac92ee02f6b2308b76b38bf86beb356a4"
  license "ISC"

  bottle do
    root_url "https://ghcr.io/v2/codeman99/tap"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "2db576d01fa37f8f824d641cfc951bd82fe2b7049a88eb6f0b2dc550f89da89d"
    sha256 cellar: :any,                 x86_64_linux: "e58d8760d921970eefc272cbb7a590db265f56338aa164e25bee91c8a25589ab"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "tyedev #{version}", shell_output("#{bin}/tyedev --version")
  end
end
