class BbAnalytics < Formula
  desc "CDM tool: bb-analytics"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.0.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-analytics/1.0.4/bb-analytics-1.0.4-darwin-intel.tar.gz"
      sha256 "629d32028b4a7062a61120f46a05f34beb05b34915a54c6f3a6bf9bf93976a7e"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-analytics/1.0.4/bb-analytics-1.0.4-darwin-arm.tar.gz"
      sha256 "c8ed2b3a0433682e4e71bad2b9c5f19824c28eab04dce4349c14ef92d3cc51f3"
    end
  end

  def install
    bin.install "bb-analytics"
  end

  test do
    system "#{bin}/bb-analytics", "--version"
  end
end
