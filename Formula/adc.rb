class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://github.com/cdm-ch"
  version "1.11.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.11.3/adc-1.11.3-darwin-intel.tar.gz"
      sha256 "2b9f41d546bdc7ba6ef1847862486697b1d79bf63cce3a65ea660bb4b6e47c08"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.11.3/adc-1.11.3-darwin-arm.tar.gz"
      sha256 "a6881039cc59a4bcd584a14f01438c3e194218ce8cd286db9efb34473282b36e"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end
