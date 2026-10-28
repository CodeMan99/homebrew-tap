class Tyedev < Formula
  desc "Improve devcontainer creation"
  homepage "https://github.com/CodeMan99/tyedev"
  url "https://github.com/CodeMan99/tyedev/archive/refs/tags/v0.4.3.tar.gz"
  sha256 "17b62c9f85b939bc223d10db1eeb99fac92ee02f6b2308b76b38bf86beb356a4"
  license "ISC"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "tyedev #{version}", shell_output("#{bin}/tyedev --version")
  end
end
