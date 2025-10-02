class BbAnalytics < Formula
  desc "CDM tool: bb-analytics"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.0.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-analytics/1.0.1/bb-analytics-1.0.1-darwin-intel.tar.gz"
      sha256 "499df014e63135dd4b9a5af363326e41a6fbef527457df217949d3ed078eb9a5"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-analytics/1.0.1/bb-analytics-1.0.1-darwin-arm.tar.gz"
      sha256 "0e83aa7e9b2c4fc2601c53b0629582f721ab086cc76e5df462ac23356bddb882"
    end
  end

  def install
    bin.install "bb-analytics"
  end

  test do
    system "#{bin}/bb-analytics", "--version"
  end
end
