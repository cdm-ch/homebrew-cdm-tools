# Homebrew Formula snippet for version-compare v1.0.4
# Copy this into your Formula/version-compare.rb file

class VersionCompare < Formula
  desc "Concurrent Kubernetes cluster version comparison tool"
  homepage "https://git.cdm.smis.ch/bitbucket/scm/ccpt/homebrew-cdm-tools"
  version "1.0.4"
  
  # Anonymous read access enabled in Nexus
  url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/version-compare/1.0.4/version-compare-1.0.4-darwin-arm64.tar.gz"
  
  sha256 "614925d105072f2d7433efacc4ab02d9b8dcf26e068b261577cf2addf4c58dc8"
  
  depends_on arch: :arm64
  
  def install
    bin.install "version-compare"
  end
  
  test do
    assert_match "Version Compare Tool", shell_output("#{bin}/version-compare --help 2>&1", 1)
  end
end
