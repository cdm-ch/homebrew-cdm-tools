# Homebrew Formula snippet for version-compare v1.0.1
# Copy this into your Formula/version-compare.rb file

class VersionCompare < Formula
  desc "Concurrent Kubernetes cluster version comparison tool"
  homepage "https://git.cdm.smis.ch/bitbucket/scm/ccpt/homebrew-cdm-tools"
  version "1.0.1"
  
  # Anonymous read access enabled in Nexus
  url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/version-compare/1.0.1/version-compare-1.0.1-darwin-arm64.tar.gz"
  
  sha256 "9238dbcd6a083ddcf23efcc370b194e4dcb200abb29eef5343683c1ac7b380d9"
  
  depends_on arch: :arm64
  
  def install
    bin.install "version-compare"
  end
  
  test do
    assert_match "Version Compare Tool", shell_output("#{bin}/version-compare --help 2>&1", 1)
  end
end
