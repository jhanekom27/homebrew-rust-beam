# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class RustBeam < Formula
  desc "My simple file transfer thing written in Rust"
  homepage "https://github.com/jhanekom27/rust-beam"
  version "v0.0.43"

  if OS.mac?
    url "https://github.com/jhanekom27/rust-beam/releases/download/v0.0.43/rust-beam-v0.0.43-macos.tar.gz"
    sha256 "8e6bf9d93895326a9fe6f16cad0fa0abb0ec6bc590fc8b305e1cf725ac75c699" # macos
  elsif OS.linux?
    url "https://github.com/jhanekom27/rust-beam/releases/download/v0.0.43/rust-beam-v0.0.43-linux.tar.gz"
    sha256 "63a4fee48131c36586e124b4c4d8656f4a7ee99c116bd28312ec696b830b43e2" # linux
  end

  def install
    bin.install "rust-beam"
  end

  test do
    system "#{bin}/rust-beam", "--version"
  end
end