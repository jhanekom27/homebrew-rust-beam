# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class RustBeam < Formula
    desc "My simple file transfer thing written in Rust"
    homepage "https://github.com/jhanekom27/rust-beam"
    url "https://github.com/jhanekom27/rust-beam/releases/download/latest/rust-beam-mac.tar.gz"
    sha256 "1bafb49b9930293a3b0d055690f560e56ae3960713e1660678711d12a23a637e"
    version "0.0.1"
  
    def install
      bin.install "rust-beam"
    end
end