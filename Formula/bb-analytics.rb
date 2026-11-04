class BbAnalytics < Formula
  desc "CDM tool: bb-analytics"
  homepage "https://github.com/cdm-ch"
  version "1.7.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-analytics/1.7.5/bb-analytics-1.7.5-darwin-intel.tar.gz"
      sha256 "dced8a21f622e0890aae7057b6b4caa9fd73bfea25ebbb44febf88a10bc8f574"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-analytics/1.7.5/bb-analytics-1.7.5-darwin-arm.tar.gz"
      sha256 "01b33fefada78b09c032d7bcdce542b8a0ca4976a9eac43fabd2b075aa21357e"
    end
  end

  def install
    bin.install "bb-analytics"
  end

  test do
    system "#{bin}/bb-analytics", "--version"
  end
end
