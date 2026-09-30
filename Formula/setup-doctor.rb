class SetupDoctor < Formula
  desc "Score and improve your AI coding agent setup, local-only and open source"
  homepage "https://github.com/saxenakapil/setup-doctor"
  url "https://registry.npmjs.org/setup-doctor/-/setup-doctor-0.3.1.tgz"
  sha256 "ddce88dcef30e6d56337825f66abc19d861d7f0ac568c18c3715859798eb7d84"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/setup-doctor --version")
  end
end
