class OneCode < Formula
  desc "Claude Code experience on any model - the bundled One Code app"
  homepage "https://github.com/IsuruMaduranga/one-code"
  url "https://registry.npmjs.org/@one-ai/one-code/-/one-code-0.1.4.tgz"
  sha256 "b173dc6bb52febc836b0e25cbe9e7e2296078c55efa69cc8ffe6c3dac2c88168"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.1.4", shell_output("#{bin}/one-code --version")
  end
end
