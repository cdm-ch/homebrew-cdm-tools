class BbAnalytics < Formula
  desc "CDM tool: bb-analytics"
  homepage "https://github.com/cdm-ch"
  version "1.4.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-analytics/1.4.0/bb-analytics-1.4.0-darwin-intel.tar.gz"
      sha256 "f2093cbc591d9ab3cdb34c96d0bcb5c975e6e7d5cb51aa445990513e24858ba3"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-analytics/1.4.0/bb-analytics-1.4.0-darwin-arm.tar.gz"
      sha256 "2aac362659e7926b50758c51e3123081c559e562fed2d27d88dccd417eac5fed"
    end
  end

  def install
    bin.install "bb-analytics"
  end

  test do
    system "#{bin}/bb-analytics", "--version"
  end
end
