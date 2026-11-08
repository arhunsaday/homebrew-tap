class PreflightCli < Formula
  desc "Inspect, scope, share and verify AI coding setups (CLI and terminal UI)"
  homepage "https://preflight.arhun.fr"
  url "https://github.com/arhunsaday/preflight/releases/download/v0.1.0-beta.1/arhunsaday-preflight-0.1.0-beta.1.tgz"
  sha256 "2257a6527ffcc59bba94d3bfbda5d11fd5e9a123ac644c837c39e3b7506ef0a9"
  license "MIT"

  # Pre-releases only so far: switch to `strategy :github_latest` at the first stable release.
  livecheck do
    url "https://github.com/arhunsaday/preflight.git"
    regex(/^v?(\d+(?:\.\d+)+(?:-[\w.]+)?)$/i)
  end

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/preflight --version")
    assert_match "doctor", shell_output("#{bin}/preflight --help")
  end
end
