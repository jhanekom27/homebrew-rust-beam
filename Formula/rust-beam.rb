# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class RustBeam < Formula
  desc "My simple file transfer thing written in Rust"
  homepage "https://github.com/jhanekom27/rust-beam"
  version "10"

  if OS.mac?
    url "macurl"
    sha256 "MACOS_SHA256_CHECKSUM"
  elsif OS.linux?
    url "https://github.com/user/repo/releases/download/v1.0.0/rust-beam-1.0.0-linux.tar.gz"
    sha256 "LINUX_SHA256_CHECKSUM"
  end

  def install
    bin.install "rust-beam"
  end

  test do
    system "#{bin}/rust-beam", "--version"
  end
end