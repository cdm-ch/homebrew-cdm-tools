class BbAnalytics < Formula
  desc "CDM tool: bb-analytics"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.0.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-analytics/1.0.3/bb-analytics-1.0.3-darwin-intel.tar.gz"
      sha256 "c483df326de063a69077b2307492c73b8542eaf5df8dcd8f09ab74c7a0cb1891"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-analytics/1.0.3/bb-analytics-1.0.3-darwin-arm.tar.gz"
      sha256 "58dff027ab2de64f3d72553d23e490dc22dcbc00738fb5e6c7b48be68c57649b"
    end
  end

  def install
    bin.install "bb-analytics"
  end

  test do
    system "#{bin}/bb-analytics", "--version"
  end
end
