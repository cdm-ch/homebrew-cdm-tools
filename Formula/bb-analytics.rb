class BbAnalytics < Formula
  desc "CDM tool: bb-analytics"
  homepage "https://github.com/cdm-ch"
  version "1.3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-analytics/1.3.0/bb-analytics-1.3.0-darwin-intel.tar.gz"
      sha256 "08c7e45a205f79f9225497ecb5f5a31b76176355aa38f939b4f66249b97aee6d"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-analytics/1.3.0/bb-analytics-1.3.0-darwin-arm.tar.gz"
      sha256 "994a225ff8b616ee4494b1091930ca6767b9b949e4132eaa015a1838abc93991"
    end
  end

  def install
    bin.install "bb-analytics"
  end

  test do
    system "#{bin}/bb-analytics", "--version"
  end
end
