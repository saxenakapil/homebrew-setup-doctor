class SetupDoctor < Formula
  desc "Score and improve your AI coding agent setup, local-only and open source"
  homepage "https://github.com/saxenakapil/setup-doctor"
  url "https://registry.npmjs.org/setup-doctor/-/setup-doctor-0.3.3.tgz"
  sha256 "b87b75d174b5a5501aba5e1051bc0e5d7d1ed231ce740eafc894540e4af97d69"
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
