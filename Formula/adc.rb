class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.4.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.4.5/adc-1.4.5-darwin-intel.tar.gz"
      sha256 "9247197e042e653998a6b62e216b01b3cfeb5dbebbe8b1da641b30bbe1baba29"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.4.5/adc-1.4.5-darwin-arm.tar.gz"
      sha256 "1c7ff94718e62bc6bf5595a0dd92674af93f0ad12c19268200dc0399d52176e0"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end
