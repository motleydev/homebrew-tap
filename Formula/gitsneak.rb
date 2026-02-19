class Gitsneak < Formula
  desc "Analyze organizational involvement in GitHub repositories"
  homepage "https://github.com/motleydev/gitsneak"
  url "https://registry.npmjs.org/gitsneak/-/gitsneak-1.1.0.tgz"
  sha256 "4f54679ca9637cdb57a2d16c12e8efb19ea9cb8a47c9e00baba88cfa31839d2a"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
    man1.install Dir["#{libexec}/lib/node_modules/gitsneak/man/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitsneak --version")
  end
end
