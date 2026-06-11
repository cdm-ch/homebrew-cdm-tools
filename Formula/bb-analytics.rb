class BbAnalytics < Formula
  desc "CDM tool: bb-analytics"
  homepage "https://github.com/cdm-ch"
  version "1.6.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-analytics/1.6.0/bb-analytics-1.6.0-darwin-intel.tar.gz"
      sha256 "dff2c7f6a576946b8ce6d06c077dcc9915337d9b927dfcc9a934e377484124e9"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-analytics/1.6.0/bb-analytics-1.6.0-darwin-arm.tar.gz"
      sha256 "b0f1010f686c51b9c3bf65a02eb4df1c3eae133cac17fdce4de9341011fa4895"
    end
  end

  def install
    bin.install "bb-analytics"
  end

  test do
    system "#{bin}/bb-analytics", "--version"
  end
end
