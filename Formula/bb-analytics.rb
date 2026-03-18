class BbAnalytics < Formula
  desc "CDM tool: bb-analytics"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.0.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-analytics/1.0.7/bb-analytics-1.0.7-darwin-intel.tar.gz"
      sha256 "fbff57669f7d8b89b9226ca4ce3beab1f97f40b0c3147951c8383f7f52e61afe"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-analytics/1.0.7/bb-analytics-1.0.7-darwin-arm.tar.gz"
      sha256 "547de3d4114eab4d7d67fb71df889c075ed4e97a816e4012c1967baae2ccb601"
    end
  end

  def install
    bin.install "bb-analytics"
  end

  test do
    system "#{bin}/bb-analytics", "--version"
  end
end
