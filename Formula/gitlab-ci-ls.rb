class GitlabCiLs < Formula
  desc "Gitlab CI Language Server"
  homepage "https://github.com/alesbrelih/gitlab-ci-ls"
  url "https://github.com/alesbrelih/gitlab-ci-ls/archive/refs/tags/0.13.3.tar.gz"
  sha256 "9913f3d803ef212d8e790a4977380f606300fb26cbd6608e1f6ae64a4ba7b0ca"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system `"which" "gitlab-ci-ls"`
  end
end
