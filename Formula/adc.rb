class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.4.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.4.6/adc-1.4.6-darwin-intel.tar.gz"
      sha256 "35ce44727bef65c605f3560f460f48ee776bfbad02f76df59a2a43cf2917d7ce"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.4.6/adc-1.4.6-darwin-arm.tar.gz"
      sha256 "645c49252599c95552e2d6e7748ca20e8607bc055c0347ba9dd39cc909ccf935"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end
