class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.0.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.0.1/adc-1.0.1-darwin-intel.tar.gz"
      sha256 "8d8536fa21d300229382b60c53174416129a52fcd1511315e9924b1ca3271baa"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.0.1/adc-1.0.1-darwin-arm.tar.gz"
      sha256 "208c25895abc18455699a6a189eda4114a4164c1539017ad1d04c4270ffe76ae"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end
