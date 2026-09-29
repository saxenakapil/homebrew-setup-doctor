class SetupDoctor < Formula
  desc "Score and improve your AI coding agent setup, local-only and open source"
  homepage "https://github.com/saxenakapil/setup-doctor"
  url "https://registry.npmjs.org/setup-doctor/-/setup-doctor-0.1.0.tgz"
  sha256 "d63fa26768c8455e2d4932a5e61ce1665af08cfcecfd03290570d8d021f5d642"
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
