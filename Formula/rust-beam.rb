# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class RustBeam < Formula
  desc "My simple file transfer thing written in Rust"
  homepage "https://github.com/jhanekom27/rust-beam"
  version "v0.0.36"

  if OS.mac?
    url "https://github.com/jhanekom27/rust-beam/releases/download/v0.0.36/rust-beam-v0.0.36-macos.tar.gz"
    sha256 "73091ac2b50c8b1f1a4225e6c04a96d3fa04149c1aa42af073ce17d3883adf9e" # macos
  elsif OS.linux?
    url "https://github.com/jhanekom27/rust-beam/releases/download/v0.0.36/rust-beam-v0.0.36-linux.tar.gz"
    sha256 "37a284906b42611227a369e686a624257a5831c96c16c92750d29fdbd29e8846" # linux
  end

  def install
    bin.install "rust-beam"
  end

  test do
    system "#{bin}/rust-beam", "--version"
  end
end