class Adc < Formula
  desc "CDM tool: adc"
  homepage "https://github.com/cdm-ch"
  version "1.35.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.35.0/adc-1.35.0-darwin-intel.tar.gz"
      sha256 "bec1cf97b0705c6f68a59dd30ae3b3780529581e24c3c3cc8ec3a0c0b90fe9cd"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.35.0/adc-1.35.0-darwin-arm.tar.gz"
      sha256 "c1ebf762af3e959e1f26ade02fb68c51e6c0aef4be7e511d4dd9ebed3f56cf5c"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end
