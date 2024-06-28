# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class RustBeam < Formula
  desc "My simple file transfer thing written in Rust"
  homepage "https://github.com/jhanekom27/rust-beam"
  version "v0.0.38"

  if OS.mac?
    url "https://github.com/jhanekom27/rust-beam/releases/download/v0.0.38/rust-beam-v0.0.38-macos.tar.gz"
    sha256 "603330389e7cd4f950c4b71d425ab4314723b45c352981fa986958b3f52bc0b4" # macos
  elsif OS.linux?
    url "https://github.com/jhanekom27/rust-beam/releases/download/v0.0.38/rust-beam-v0.0.38-linux.tar.gz"
    sha256 "4c42da8e1927f821f27f4fb23cf9b3d043749009a92a93690cefe0cfd62a5e23" # linux
  end

  def install
    bin.install "rust-beam"
  end

  test do
    system "#{bin}/rust-beam", "--version"
  end
end