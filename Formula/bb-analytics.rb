class BbAnalytics < Formula
  desc "CDM tool: bb-analytics"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.0.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-analytics/1.0.2/bb-analytics-1.0.2-darwin-intel.tar.gz"
      sha256 "b2337354e6168ea0978816f80328b03d87d763959f35da096b5f4185c3c2b3c8"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-analytics/1.0.2/bb-analytics-1.0.2-darwin-arm.tar.gz"
      sha256 "9b756e0cf438729b6ed04fc3fb32387050c4e12eab57a9ea9909fe773ce6e0ac"
    end
  end

  def install
    bin.install "bb-analytics"
  end

  test do
    system "#{bin}/bb-analytics", "--version"
  end
end
