# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class RustBeam < Formula
  desc "My simple file transfer thing written in Rust"
  homepage "https://github.com/jhanekom27/rust-beam"
  version "v0.0.40"

  if OS.mac?
    url "https://github.com/jhanekom27/rust-beam/releases/download/v0.0.40/rust-beam-v0.0.40-macos.tar.gz"
    sha256 "d5e9fa5f39b07c10d55fcc4e9ff04b906b836b7d71a7742b7cbd628f8234802b" # macos
  elsif OS.linux?
    url "https://github.com/jhanekom27/rust-beam/releases/download/v0.0.40/rust-beam-v0.0.40-linux.tar.gz"
    sha256 "2e9046c434d5f43108243ced8e27abaf7384d6dd25cff042fe899d88fad71b12" # linux
  end

  def install
    bin.install "rust-beam"
  end

  test do
    system "#{bin}/rust-beam", "--version"
  end
end