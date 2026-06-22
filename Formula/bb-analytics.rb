class BbAnalytics < Formula
  desc "CDM tool: bb-analytics"
  homepage "https://github.com/cdm-ch"
  version "1.7.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-analytics/1.7.2/bb-analytics-1.7.2-darwin-intel.tar.gz"
      sha256 "b750447e05495aa325d663359fef319a9bcdafc456d03c13333071ee85d435d7"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-analytics/1.7.2/bb-analytics-1.7.2-darwin-arm.tar.gz"
      sha256 "33eca919f02ceaacf5216f4c5945635c91a68e67592d4516a7f8511e6568c5c7"
    end
  end

  def install
    bin.install "bb-analytics"
  end

  test do
    system "#{bin}/bb-analytics", "--version"
  end
end
