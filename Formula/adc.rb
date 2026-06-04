class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://github.com/cdm-ch"
  version "1.16.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.16.0/adc-1.16.0-darwin-intel.tar.gz"
      sha256 "547cd2fbb9a889ed9ab25f1720e9d796f1d3cf1cf96271003c33cdd632beec35"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.16.0/adc-1.16.0-darwin-arm.tar.gz"
      sha256 "d5364a2d611d42e9584427dce9b6967aca3ec95fdfe7fc888bcc3a8fa608868c"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end
