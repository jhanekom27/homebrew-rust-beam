# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class RustBeam < Formula
  desc "My simple file transfer thing written in Rust"
  homepage "https://github.com/jhanekom27/rust-beam"
  version "v0.0.33"

  if OS.mac?
    url "https://github.com/user/repo/releases/download/vv0.0.33/rust-beam-v0.0.33-macos.tar.gz"
    sha256 "b1f1627c5c76ae84923f6a67208f60138e8d81db7de54e3a5f1878e8f8b6e4f8" # macos
  elsif OS.linux?
    url "https://github.com/user/repo/releases/download/vv0.0.33/rust-beam-v0.0.33-linux.tar.gz"
    sha256 "534d4f3f3ff2d18e125ea986f1552f4413ed5a64d08fb49190be34ac5005f705" # linux
  end

  def install
    bin.install "rust-beam"
  end

  test do
    system "#{bin}/rust-beam", "--version"
  end
end