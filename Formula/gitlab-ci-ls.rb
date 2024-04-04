class GitlabCiLs < Formula
  desc "Gitlab CI Language Server"
  homepage "https://github.com/alesbrelih/gitlab-ci-ls"
  url "https://github.com/alesbrelih/gitlab-ci-ls/archive/refs/tags/0.8.0.tar.gz"
  sha256 "c195f1ec21553f9e2b1dd12e4a0937c39d1bffa34d3d7ccf303ab0e6a44d62ac"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "which gitlab-ci-ls"
  end
end
