# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class RustBeam < Formula
  desc "My simple file transfer thing written in Rust"
  homepage "https://github.com/jhanekom27/rust-beam"
  version "v0.0.35"

  if OS.mac?
    url "https://github.com/jhanekom27/rust-beam/releases/download/v0.0.35/rust-beam-v0.0.35-macos.tar.gz"
    sha256 "727df93532eb54ffaece91de9179a53d093105c600c9bd0abadcfd273b029af2" # macos
  elsif OS.linux?
    url "https://github.com/jhanekom27/rust-beam/releases/download/v0.0.35/rust-beam-v0.0.35-linux.tar.gz"
    sha256 "1e3d5b0e86de89521a91ecd43f679a68b466ae92f8747855605200f9c4d718c0" # linux
  end

  def install
    bin.install "rust-beam"
  end

  test do
    system "#{bin}/rust-beam", "--version"
  end
end