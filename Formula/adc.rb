class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.4.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.4.3/adc-1.4.3-darwin-intel.tar.gz"
      sha256 "4c082fa05a29f4da3e80dea1caa25822ffc03d6a84554251d0e644e582f5a95e"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.4.3/adc-1.4.3-darwin-arm.tar.gz"
      sha256 "3594b5ff10f8d49d0aad063a2f616dc2084ced290fa07463ef257c3bb67c4753"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end
