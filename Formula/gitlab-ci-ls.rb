class GitlabCiLs < Formula
  desc "Gitlab CI Language Server"
  homepage "https://github.com/alesbrelih/gitlab-ci-ls"
  url "https://github.com/alesbrelih/gitlab-ci-ls/archive/refs/tags/0.18.0.tar.gz"
  sha256 "e0b0df21a934bee0e1e40aba3888d25a8e9c234f64a5e6a481b0825a70cd2a14"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system `"which" "gitlab-ci-ls"`
  end
end
