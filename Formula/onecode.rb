class Onecode < Formula
  desc "Claude Code experience on any model, as a bundled app"
  homepage "https://github.com/IsuruMaduranga/one-code"
  url "https://registry.npmjs.org/@one-ai/one-code/-/one-code-0.4.1.tgz"
  sha256 "c49a980f4ee0f64f3dab9aee994e856d22af060de9a49eba0293612dd62a4367"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.4.1", shell_output("#{bin}/onecode --version")
  end
end
