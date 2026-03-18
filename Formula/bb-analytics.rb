class BbAnalytics < Formula
  desc "CDM tool: bb-analytics"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.0.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-analytics/1.0.5/bb-analytics-1.0.5-darwin-intel.tar.gz"
      sha256 "84c7b0a5a4b15ccb53d3d931c6ea41bc44ccfea266ff10544299c804c7d9974f"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-analytics/1.0.5/bb-analytics-1.0.5-darwin-arm.tar.gz"
      sha256 "582c5591cc3a19eef23ac77b2a2fa1bd2552d7b67ee80a4f2a15f5d06661d105"
    end
  end

  def install
    bin.install "bb-analytics"
  end

  test do
    system "#{bin}/bb-analytics", "--version"
  end
end
