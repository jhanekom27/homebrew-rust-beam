# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class RustBeam < Formula
  desc "My simple file transfer thing written in Rust"
  homepage "https://github.com/jhanekom27/rust-beam"
  version "v0.0.31"

  if OS.mac?
    url "macos"
    sha256 "6508f9650478a54db810e7d2f536de3ab9e95bcc9f5d8f67f14d7d1727a88a6d"
  elsif OS.linux?
    url "https://github.com/user/repo/releases/download/vv0.0.31/rust-beam-v0.0.31-linux.tar.gz"
    sha256 "7817562e7a2248e594d0209dd3301fd561f987a49267a947136c4bc8a5721893"
  end

  def install
    bin.install "rust-beam"
  end

  test do
    system "#{bin}/rust-beam", "--version"
  end
end