class MacDevCleanup < Formula
  desc "Find and safely delete developer junk on macOS: Xcode, node_modules, Docker, caches"
  homepage "https://github.com/jutsustudio/mac-dev-cleanup"
  url "https://github.com/jutsustudio/mac-dev-cleanup/releases/download/v0.1.0/mac-dev-cleanup-v0.1.0-macos-universal.tar.gz"
  sha256 "6b03725ab0f8c763f6e42bcd8a557ee0c0c2df055fcc5dd5f99f852e31a18b45"
  license "MIT"

  depends_on :macos

  def install
    bin.install "mac-dev-cleanup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mac-dev-cleanup --version")
  end
end
