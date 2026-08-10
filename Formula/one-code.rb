class OneCode < Formula
  desc "Claude Code experience on any model - the bundled One Code app"
  homepage "https://github.com/IsuruMaduranga/one-code"
  url "https://registry.npmjs.org/@one-ai/one-code/-/one-code-0.1.2.tgz"
  sha256 "18023060b84a6b8d428f123b1a4dd580b357ede24ef199433c4c47d7141562ab"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.1.2", shell_output("#{bin}/one-code --version")
  end
end
