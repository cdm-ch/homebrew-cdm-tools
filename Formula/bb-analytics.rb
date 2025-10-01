class BbAnalytics < Formula
  desc "CDM tool: bb-analytics"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-analytics/1.0.0/bb-analytics-1.0.0-darwin-intel.tar.gz"
      sha256 "c491bdf8717b0200a34d519aa19a0f754543a15671295600530aaa0eceb3eede"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-analytics/1.0.0/bb-analytics-1.0.0-darwin-arm.tar.gz"
      sha256 "9fee05590e2672eb15e84a10e76ad630fa24e85f8b02a36e0ce49ecf6a5386be"
    end
  end

  def install
    bin.install "bb-analytics"
  end

  test do
    system "#{bin}/bb-analytics", "--version"
  end
end
