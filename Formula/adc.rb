class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.3.10"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.3.10/adc-1.3.10-darwin-intel.tar.gz"
      sha256 "5f9a30efe34dde6029fcebab47c2fa2392619a2e620af0d2525518f7afead173"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.3.10/adc-1.3.10-darwin-arm.tar.gz"
      sha256 "4d296874046b5ac321325e8a3dcb472c7e72f5069ff5a87d8e7946aee0d9c99d"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end
