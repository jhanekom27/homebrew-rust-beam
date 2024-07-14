# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class RustBeam < Formula
  desc "My simple file transfer thing written in Rust"
  homepage "https://github.com/jhanekom27/rust-beam"
  version "v0.0.41"

  if OS.mac?
    url "https://github.com/jhanekom27/rust-beam/releases/download/v0.0.41/rust-beam-v0.0.41-macos.tar.gz"
    sha256 "005cfeed6d85b01e63d7eeeb78312eca89c532892e2a3a0ad61b3624b710355f" # macos
  elsif OS.linux?
    url "https://github.com/jhanekom27/rust-beam/releases/download/v0.0.41/rust-beam-v0.0.41-linux.tar.gz"
    sha256 "745898433c2ae2b821a4211e93aadc110b76463b90196665b528706a6ee98cae" # linux
  end

  def install
    bin.install "rust-beam"
  end

  test do
    system "#{bin}/rust-beam", "--version"
  end
end