# Homebrew Formula snippet for version-compare v1.0.5
# Copy this into your Formula/version-compare.rb file

class VersionCompare < Formula
  desc "Concurrent Kubernetes cluster version comparison tool"
  homepage "https://git.cdm.smis.ch/bitbucket/scm/ccpt/homebrew-cdm-tools"
  version "1.0.5"
  
  # Anonymous read access enabled in Nexus
  url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/version-compare/1.0.5/version-compare-1.0.5-darwin-arm64.tar.gz"
  
  sha256 "92be2a7201799d4b15cca3698b19f36d001b99ac0ad871a1422aa14b089b5c50"
  
  depends_on arch: :arm64
  
  def install
    bin.install "version-compare"
  end
  
  test do
    assert_match "Version Compare Tool", shell_output("#{bin}/version-compare --help 2>&1", 1)
  end
end
