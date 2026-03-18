class BbAnalytics < Formula
  desc "CDM tool: bb-analytics"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.1.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-analytics/1.1.0/bb-analytics-1.1.0-darwin-intel.tar.gz"
      sha256 "543400056920e852bbdacfe250396c39ee99df18855d31b3e0f309e752ac6b57"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-analytics/1.1.0/bb-analytics-1.1.0-darwin-arm.tar.gz"
      sha256 "35b94fdc5b5245ca8bb6723aaf82f4647f40ff6f6ac4375830e32b8eb8b78a04"
    end
  end

  def install
    bin.install "bb-analytics"
  end

  test do
    system "#{bin}/bb-analytics", "--version"
  end
end
