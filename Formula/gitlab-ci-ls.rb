class GitlabCiLs < Formula
  desc "Gitlab CI Language Server"
  homepage "https://github.com/alesbrelih/gitlab-ci-ls"
  url "https://github.com/alesbrelih/gitlab-ci-ls/archive/refs/tags/.tar.gz"
  sha256 "172dbbf468f2d83896081a22c4d65964cd0fa3dfda7926bfbd6da8b7d4d91d75"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system `"which" "gitlab-ci-ls"`
  end
end
