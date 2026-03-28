class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.6.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.6.0/adc-1.6.0-darwin-intel.tar.gz"
      sha256 "dc645608d275143bf98910c050df76857a28e18f46fb2150f7afb1811ba64b3a"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.6.0/adc-1.6.0-darwin-arm.tar.gz"
      sha256 "143301301ca5cca698cd3f9596d558ee5e2c7e63314644a5f603146e5e5d97f5"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end
