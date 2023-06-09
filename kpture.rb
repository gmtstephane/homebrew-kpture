# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kpture < Formula
  desc "kubernetes packet capture tool"
  homepage "https://github.com/gmtstephane/kpture"
  version "0.0.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gmtstephane/kpture/releases/download/v0.0.4/kpture_Darwin_arm64.tar.gz"
      sha256 "8af72fe149d31e81883af6546eaf5f123466ba25f747b9c07747ba7b3edde571"

      def install
        bin.install "kpture"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/gmtstephane/kpture/releases/download/v0.0.4/kpture_Darwin_x86_64.tar.gz"
      sha256 "ec2a0890295001b4a80abf0acabd90d4039415ca2c4c3aea4890c70fea184941"

      def install
        bin.install "kpture"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gmtstephane/kpture/releases/download/v0.0.4/kpture_Linux_x86_64.tar.gz"
      sha256 "8ca6e3b8d2d14c2ec31da6ff6d398005fa7b67b6304a8e888a0cbfcebafb9939"

      def install
        bin.install "kpture"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gmtstephane/kpture/releases/download/v0.0.4/kpture_Linux_arm64.tar.gz"
      sha256 "982fdf5ba70cc0cf1cdc5d8d99f40a4777db332ad2af228c145e528f52fedd25"

      def install
        bin.install "kpture"
      end
    end
  end
end
