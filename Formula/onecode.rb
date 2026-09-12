class Onecode < Formula
  desc "Claude Code experience on any model, as a bundled app"
  homepage "https://github.com/IsuruMaduranga/one-code"
  url "https://registry.npmjs.org/@one-ai/one-code/-/one-code-0.3.0.tgz"
  sha256 "9840f4f560b2883634d4c5124ceeaec938a4690e719afc749a970455fe6415c7"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.3.0", shell_output("#{bin}/onecode --version")
  end
end
