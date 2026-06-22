class BbAnalytics < Formula
  desc "CDM tool: bb-analytics"
  homepage "https://github.com/cdm-ch"
  version "1.7.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-analytics/1.7.4/bb-analytics-1.7.4-darwin-intel.tar.gz"
      sha256 "6519b0511acb9434ebc722528d00ddb90943f887660d44215611bc82f799437a"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-analytics/1.7.4/bb-analytics-1.7.4-darwin-arm.tar.gz"
      sha256 "7739b9ac06c236d3fe7a3861630d9b50ad2640c9c05618cff6d024336b082e41"
    end
  end

  def install
    bin.install "bb-analytics"
  end

  test do
    system "#{bin}/bb-analytics", "--version"
  end
end
