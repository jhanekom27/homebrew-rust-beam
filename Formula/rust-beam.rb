# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class RustBeam < Formula
    desc "My simple file transfer thing written in Rust"
    homepage "https://github.com/jhanekom27/rust-beam"
    url "https://github.com/jhanekom27/rust-beam/releases/latest/download/rust-beam-mac.tar.gz"
    sha256 "2ddcae12d409ad05289bc623a545c8ffb8e3fa650502ec015c11ac11e62ffce2"
    version "0.0.2"
  
    def install
      bin.install "rust-beam"
    end
end
