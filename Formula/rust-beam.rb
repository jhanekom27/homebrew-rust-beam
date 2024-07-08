# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class RustBeam < Formula
  desc "My simple file transfer thing written in Rust"
  homepage "https://github.com/jhanekom27/rust-beam"
  version "v0.0.39"

  if OS.mac?
    url "https://github.com/jhanekom27/rust-beam/releases/download/v0.0.39/rust-beam-v0.0.39-macos.tar.gz"
    sha256 "222c9cba7e8c75454988748ecf6a8536137593fd1b1e0802b1c114455ab9c691" # macos
  elsif OS.linux?
    url "https://github.com/jhanekom27/rust-beam/releases/download/v0.0.39/rust-beam-v0.0.39-linux.tar.gz"
    sha256 "63800de4cbbd229282e89d2c66df9e473726d843cc6b703511dff389df61450a" # linux
  end

  def install
    bin.install "rust-beam"
  end

  test do
    system "#{bin}/rust-beam", "--version"
  end
end