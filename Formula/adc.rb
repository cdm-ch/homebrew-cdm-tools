class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.4.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.4.2/adc-1.4.2-darwin-intel.tar.gz"
      sha256 "0018cad6127510a5d8fd5f8149b5cf56098dce0de72662b33644648bcbbb7246"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.4.2/adc-1.4.2-darwin-arm.tar.gz"
      sha256 "cc5afe93e806ecc7b94505cde2e21b8888683b54057161e3b146883bb51e83fd"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end
