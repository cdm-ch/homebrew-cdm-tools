# Homebrew Formula snippet for version-compare v1.0.3
# Copy this into your Formula/version-compare.rb file

class VersionCompare < Formula
  desc "Concurrent Kubernetes cluster version comparison tool"
  homepage "https://git.cdm.smis.ch/bitbucket/scm/ccpt/homebrew-cdm-tools"
  version "1.0.3"
  
  # Anonymous read access enabled in Nexus
  url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/version-compare/1.0.3/version-compare-1.0.3-darwin-arm64.tar.gz"
  
  sha256 "510d26deccf4e0a557892b5b40d9dff987eef3c64b9e73597c3df8991bcdb432"
  
  depends_on arch: :arm64
  
  def install
    bin.install "version-compare"
  end
  
  test do
    assert_match "Version Compare Tool", shell_output("#{bin}/version-compare --help 2>&1", 1)
  end
end
