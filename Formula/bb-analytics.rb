class BbAnalytics < Formula
  desc "CDM tool: bb-analytics"
  homepage "https://github.com/cdm-ch"
  version "1.7.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-analytics/1.7.0/bb-analytics-1.7.0-darwin-intel.tar.gz"
      sha256 "a532bf13148959d9321f75bdf05c05864bdaae9eef04dd7422da0ea6eb60117e"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-analytics/1.7.0/bb-analytics-1.7.0-darwin-arm.tar.gz"
      sha256 "856c7225bf03b66a1d3d337f851f38d24d56cfa71ba3f57d808f85435bcff8a0"
    end
  end

  def install
    bin.install "bb-analytics"
  end

  test do
    system "#{bin}/bb-analytics", "--version"
  end
end
