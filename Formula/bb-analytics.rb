class BbAnalytics < Formula
  desc "CDM tool: bb-analytics"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.0.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-analytics/1.0.6/bb-analytics-1.0.6-darwin-intel.tar.gz"
      sha256 "bd8812dba0fd38f4787a3bc1dfdc5278b5be3a59707e74b0c569e81aa6f0ace6"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-analytics/1.0.6/bb-analytics-1.0.6-darwin-arm.tar.gz"
      sha256 "9944f16dbec2e2518ef84f3ea34b19f12a269ce10553b2f96cc77fefa0a73df2"
    end
  end

  def install
    bin.install "bb-analytics"
  end

  test do
    system "#{bin}/bb-analytics", "--version"
  end
end
