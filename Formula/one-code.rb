class OneCode < Formula
  desc "Claude Code experience on any model - the bundled One Code app"
  homepage "https://github.com/IsuruMaduranga/one-code"
  url "https://registry.npmjs.org/@one-ai/one-code/-/one-code-0.1.3.tgz"
  sha256 "c88866d7aff79ed668049c52ccf142cec64c4626d25511fec64220fe096d820c"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.1.3", shell_output("#{bin}/one-code --version")
  end
end
