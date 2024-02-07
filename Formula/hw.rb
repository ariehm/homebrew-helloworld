# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Hw < Formula
  desc "Friendly software that offers a friendly greeting"
  homepage "https://github.com/ariehm/helloworld"
  version "0.0.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ariehm/helloworld/releases/download/v0.0.11/helloworld_Darwin_x86_64.tar.gz"
      sha256 "0bf871a0db90c9ec4862f019e9d2a8ef933431fa74af615c4892105a7f750007"

      def install
        bin.install "hw"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ariehm/helloworld/releases/download/v0.0.11/helloworld_Darwin_arm64.tar.gz"
      sha256 "596da071847969205a490287bf012ffa4079de57fa10b755508a095c9dbd4e18"

      def install
        bin.install "hw"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ariehm/helloworld/releases/download/v0.0.11/helloworld_Linux_arm64.tar.gz"
      sha256 "6f4653ab8ecfc49894b7794770bd25e0cbcdf3b391ea43fd3edf977820fce8fd"

      def install
        bin.install "hw"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ariehm/helloworld/releases/download/v0.0.11/helloworld_Linux_x86_64.tar.gz"
      sha256 "3c5a027f191807255157de64fe02ff5e0d60a15bf8735f0887b4d9b9a9a01667"

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
