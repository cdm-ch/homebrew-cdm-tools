class BbAnalytics < Formula
  desc "CDM tool: bb-analytics"
  homepage "https://github.com/cdm-ch"
  version "1.5.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-analytics/1.5.0/bb-analytics-1.5.0-darwin-intel.tar.gz"
      sha256 "b13002ff87158ec1b7f7107b112db29125dbb9353bf2844a8cd1b3c7c48311ba"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-analytics/1.5.0/bb-analytics-1.5.0-darwin-arm.tar.gz"
      sha256 "acb410bf8c3ac6d527da6f4c1b6c955fceb8deea42f91ecf5fe46814643b1fcc"
    end
  end

  def install
    bin.install "bb-analytics"
  end

  test do
    system "#{bin}/bb-analytics", "--version"
  end
end
