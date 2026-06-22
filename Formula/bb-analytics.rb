class BbAnalytics < Formula
  desc "CDM tool: bb-analytics"
  homepage "https://github.com/cdm-ch"
  version "1.7.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-analytics/1.7.3/bb-analytics-1.7.3-darwin-intel.tar.gz"
      sha256 "5bd69c07ad300ee863373277d630ff81fed57fd8bd2a09c84c6f12a2f4d5fa04"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-analytics/1.7.3/bb-analytics-1.7.3-darwin-arm.tar.gz"
      sha256 "870fa6f002bfff4646115228de4613b6fc708224bd75a3cc86ae0019bf829ca8"
    end
  end

  def install
    bin.install "bb-analytics"
  end

  test do
    system "#{bin}/bb-analytics", "--version"
  end
end
