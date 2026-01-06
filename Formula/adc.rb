class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.3.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.3.2/adc-1.3.2-darwin-intel.tar.gz"
      sha256 "f0ad34fe3ab82b556f477827e6c5e76db0956f2121bc5bc0a63c059e300eb8f5"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.3.2/adc-1.3.2-darwin-arm.tar.gz"
      sha256 "d75e293cffd2b2da01fa91390c621101fb43085d74929fe2ea07290a413f4103"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end
