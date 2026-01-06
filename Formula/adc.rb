class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.2.0/adc-1.2.0-darwin-intel.tar.gz"
      sha256 "471ad569cab00947699ab23218f40cbaa7ddb8845f7726c3ee5bd8bc340c654b"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.2.0/adc-1.2.0-darwin-arm.tar.gz"
      sha256 "b529382d17b1654eb0402e5ada7bbed600f8e4c71cd51b825a74a442d05b23ce"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end
