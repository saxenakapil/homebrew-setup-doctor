class SetupDoctor < Formula
  desc "Score and improve your AI coding agent setup, local-only and open source"
  homepage "https://github.com/saxenakapil/setup-doctor"
  url "https://registry.npmjs.org/setup-doctor/-/setup-doctor-0.3.2.tgz"
  sha256 "e427175246cef1180499b4461efe9a10749c824a7e559c4e0fe57e8a085e7dc0"
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
