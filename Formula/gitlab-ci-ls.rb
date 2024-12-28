class GitlabCiLs < Formula
  desc "Gitlab CI Language Server"
  homepage "https://github.com/alesbrelih/gitlab-ci-ls"
  url "https://github.com/alesbrelih/gitlab-ci-ls/archive/refs/tags/1.0.0.tar.gz"
  sha256 "6feed3501591cf39b7e4c35b0a7c9fec4eba129ac248a69257c02dacc266eddc"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system `"which" "gitlab-ci-ls"`
  end
end
