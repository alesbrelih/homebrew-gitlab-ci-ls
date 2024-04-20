class GitlabCiLs < Formula
  desc "Gitlab CI Language Server"
  homepage "https://github.com/alesbrelih/gitlab-ci-ls"
  url "https://github.com/alesbrelih/gitlab-ci-ls/archive/refs/tags/0.11.2.tar.gz"
  sha256 "d46585ab7b672b216e32702268bb19462ddaa95c22c201fa9ac4699bccef2420"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system `"which" "gitlab-ci-ls"`
  end
end
