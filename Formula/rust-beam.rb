# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class RustBeam < Formula
  desc "My simple file transfer thing written in Rust"
  homepage "https://github.com/jhanekom27/rust-beam"
  version "formula-update"

  if OS.mac?
    url "macurl"
    sha256 ""
  elsif OS.linux?
    url "https://github.com/user/repo/releases/download/vformula-update/rust-beam-formula-update-linux.tar.gz"
    sha256 ""
  end

  def install
    bin.install "rust-beam"
  end

  test do
    system "#{bin}/rust-beam", "--version"
  end
end