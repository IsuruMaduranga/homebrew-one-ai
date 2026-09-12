class Onecode < Formula
  desc "Claude Code experience on any model, as a bundled app"
  homepage "https://github.com/IsuruMaduranga/one-code"
  url "https://registry.npmjs.org/@one-ai/one-code/-/one-code-0.3.1.tgz"
  sha256 "50b59f8c291e9999db04992a6f529fca918f9d7681fbc697fc7020c71a9c6856"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.3.1", shell_output("#{bin}/onecode --version")
  end
end
