# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class RustBeam < Formula
  desc "My simple file transfer thing written in Rust"
  homepage "https://github.com/jhanekom27/rust-beam"
  version "v0.0.34"

  if OS.mac?
    url "https://github.com/user/repo/releases/download/v0.0.34/rust-beam-v0.0.34-macos.tar.gz"
    sha256 "89e5304352e01f28f212e671d9bfc7aeb3581569c5776ba232b9069bce7e5b58" # macos
  elsif OS.linux?
    url "https://github.com/user/repo/releases/download/v0.0.34/rust-beam-v0.0.34-linux.tar.gz"
    sha256 "20e7b9ba4643f9f863ea32024532b6096a25e0f2284e616e5f2be5ffd01e245e" # linux
  end

  def install
    bin.install "rust-beam"
  end

  test do
    system "#{bin}/rust-beam", "--version"
  end
end