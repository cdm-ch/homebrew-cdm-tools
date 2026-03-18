class BbAnalytics < Formula
  desc "CDM tool: bb-analytics"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.1.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-analytics/1.1.1/bb-analytics-1.1.1-darwin-intel.tar.gz"
      sha256 "403d895012ae100dec53d0282800fd9b174894f31afe4dff8e8ca19835dea5c9"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-analytics/1.1.1/bb-analytics-1.1.1-darwin-arm.tar.gz"
      sha256 "ce3d87e4330a0722881bd14a15a96e7c75aa2ca00fb6516997f6f894841266bf"
    end
  end

  def install
    bin.install "bb-analytics"
  end

  test do
    system "#{bin}/bb-analytics", "--version"
  end
end
