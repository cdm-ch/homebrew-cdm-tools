class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.4.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.4.7/adc-1.4.7-darwin-intel.tar.gz"
      sha256 "c2aa8e88f4a9f602fad9da1dab6532be5436b2e6a6535f6dc13905eb5270d5cf"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.4.7/adc-1.4.7-darwin-arm.tar.gz"
      sha256 "5ba2b752b3db82691bb9707c03719294a628a7f048e53806fe26a51e067f4619"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end
