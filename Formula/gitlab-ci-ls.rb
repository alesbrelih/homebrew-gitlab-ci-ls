class GitlabCiLs < Formula
  desc "Gitlab CI Language Server"
  homepage "https://github.com/alesbrelih/gitlab-ci-ls"
  url "https://github.com/alesbrelih/gitlab-ci-ls/archive/refs/tags/0.7.1.zip"
  sha256 "59e508124b1c66bbbbe76acf09cb8a7fa227a93d91511acb3b6c2d0ae1d3a146"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "which gitlab-ci-ls"
  end
end
