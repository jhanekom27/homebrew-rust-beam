# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class RustBeam < Formula
  desc "My simple file transfer thing written in Rust"
  homepage "https://github.com/jhanekom27/rust-beam"
  version "v0.0.45"

  if OS.mac?
    url "https://github.com/jhanekom27/rust-beam/releases/download/v0.0.45/rust-beam-v0.0.45-macos.tar.gz"
    sha256 "b38b61f67aed308f2c64af1220d0dbcbf00d13a6df5821abc632eea7b1aeb834" # macos
  elsif OS.linux?
    url "https://github.com/jhanekom27/rust-beam/releases/download/v0.0.45/rust-beam-v0.0.45-linux.tar.gz"
    sha256 "b9d1b3fd0e7a1796ed10ae9216da4f38c704b5e17f036979c53abab74ca2d76a" # linux
  end

  def install
    bin.install "rust-beam"
  end

  test do
    system "#{bin}/rust-beam", "--version"
  end
end