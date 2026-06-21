class BbAnalytics < Formula
  desc "CDM tool: bb-analytics"
  homepage "https://github.com/cdm-ch"
  version "1.7.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-analytics/1.7.1/bb-analytics-1.7.1-darwin-intel.tar.gz"
      sha256 "74726532a9b30675186acf57c72777c80c7707a49c378dc695433382a317854a"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-analytics/1.7.1/bb-analytics-1.7.1-darwin-arm.tar.gz"
      sha256 "e83616fca14a2006282b12e83a7ce1d498d3ffccb3bc309f568e2402b47c3f61"
    end
  end

  def install
    bin.install "bb-analytics"
  end

  test do
    system "#{bin}/bb-analytics", "--version"
  end
end
