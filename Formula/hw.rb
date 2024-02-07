# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Hw < Formula
  desc "Friendly software that offers a friendly greeting.  Friendlyly."
  homepage "https://github.com/ariehm/helloworld"
  version "0.0.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ariehm/helloworld/releases/download/v0.0.8/helloworld_Darwin_arm64.tar.gz"
      sha256 "69710705229cfdf3a0d0eec7621daa78f37b064f567020d8d2c178beac78c39f"

      def install
        bin.install "hw"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ariehm/helloworld/releases/download/v0.0.8/helloworld_Darwin_x86_64.tar.gz"
      sha256 "030bc8e52d1424f3b74e2375c0b42dda2b29ab6fd511ecc76df81d3f8c683d9c"

      def install
        bin.install "hw"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ariehm/helloworld/releases/download/v0.0.8/helloworld_Linux_x86_64.tar.gz"
      sha256 "95e3e47c3374ee4f168670c9739ad2b8ead451c2744f4ce4a16e2b884ec12a5d"

      def install
        bin.install "hw"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ariehm/helloworld/releases/download/v0.0.8/helloworld_Linux_arm64.tar.gz"
      sha256 "39e683238a1e8c558a349d29683fbc59f30975084208125e456e2f89570815b2"

      def install
        bin.install "hw"
      end
    end
  end

  def caveats
    <<~EOS
      Beware!  DOOM!
    EOS
  end

  test do
    system "#{bin}/hw"
  end
end
