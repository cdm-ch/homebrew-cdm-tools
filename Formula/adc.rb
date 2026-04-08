class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://github.com/cdm-ch"
  version "1.8.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.8.0/adc-1.8.0-darwin-intel.tar.gz"
      sha256 "1699551637341258aa3c62c003a6a1298958c96e8cda7fad3de2ccd4d20513ca"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.8.0/adc-1.8.0-darwin-arm.tar.gz"
      sha256 "43d100c532722224210eb5fc009a5a3b5df72d8dab3d2dd873745c173399e43e"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end
