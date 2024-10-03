# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class RustBeam < Formula
  desc "My simple file transfer thing written in Rust"
  homepage "https://github.com/jhanekom27/rust-beam"
  version "v0.0.46"

  if OS.mac?
    url "https://github.com/jhanekom27/rust-beam/releases/download/v0.0.46/rust-beam-v0.0.46-macos.tar.gz"
    sha256 "e0203b5e8baeecf0ebf0fed6484eb00edd39ff55ca2a3e88ee44fd742fb05188" # macos
  elsif OS.linux?
    url "https://github.com/jhanekom27/rust-beam/releases/download/v0.0.46/rust-beam-v0.0.46-linux.tar.gz"
    sha256 "bb971231ebf9760d9b9c867d41f01a5a7cfe125935fb6f76f7ab4c97dbfee65c" # linux
  end

  def install
    bin.install "rust-beam"
  end

  test do
    system "#{bin}/rust-beam", "--version"
  end
end