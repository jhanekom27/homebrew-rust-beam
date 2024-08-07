# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class RustBeam < Formula
  desc "My simple file transfer thing written in Rust"
  homepage "https://github.com/jhanekom27/rust-beam"
  version "v0.0.44"

  if OS.mac?
    url "https://github.com/jhanekom27/rust-beam/releases/download/v0.0.44/rust-beam-v0.0.44-macos.tar.gz"
    sha256 "de76073082b0d17f0e1aafeb5852ed05c82829030fbc81e19e2a2db4df081424" # macos
  elsif OS.linux?
    url "https://github.com/jhanekom27/rust-beam/releases/download/v0.0.44/rust-beam-v0.0.44-linux.tar.gz"
    sha256 "272293985a3c0f3110bb5cd954bceed0a79aaa4f6ecc4200f8786b4ef9894921" # linux
  end

  def install
    bin.install "rust-beam"
  end

  test do
    system "#{bin}/rust-beam", "--version"
  end
end