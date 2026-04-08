class BbAnalytics < Formula
  desc "CDM tool: bb-analytics"
  homepage "https://github.com/cdm-ch"
  version "1.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-analytics/1.2.0/bb-analytics-1.2.0-darwin-intel.tar.gz"
      sha256 "248f658235147b974494f0fd4b4bab2b0899e055577fabb181c0f7e852baed92"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-analytics/1.2.0/bb-analytics-1.2.0-darwin-arm.tar.gz"
      sha256 "f2e69d2ed8bf4d98107f65c5453797347af4e5d634e0e292862b1ca4c417d820"
    end
  end

  def install
    bin.install "bb-analytics"
  end

  test do
    system "#{bin}/bb-analytics", "--version"
  end
end
