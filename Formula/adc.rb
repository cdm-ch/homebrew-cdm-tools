class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://github.com/cdm-ch"
  version "1.14.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.14.1/adc-1.14.1-darwin-intel.tar.gz"
      sha256 "9d3413369ba02670a0898d7950f73474476985e8f251b52bc3a36a8b0f907263"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.14.1/adc-1.14.1-darwin-arm.tar.gz"
      sha256 "e061ecd45f1b0ca0cd5624ac5aed2496ce34e7d4a4bf270d0bd7474c8e044071"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end
