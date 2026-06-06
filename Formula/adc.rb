class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://github.com/cdm-ch"
  version "1.19.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.19.0/adc-1.19.0-darwin-intel.tar.gz"
      sha256 "3a7ee6b29f543f29b2156111f09af1feb5e5ca87e5302fce59da3566caba3858"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.19.0/adc-1.19.0-darwin-arm.tar.gz"
      sha256 "67da89e7e20e6d8ef1b5f35e47d3f985f79eca3a33fd79b66f7160b31c9fd7f1"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end
