# Homebrew Formula snippet for version-compare v1.0.2
# Copy this into your Formula/version-compare.rb file

class VersionCompare < Formula
  desc "Concurrent Kubernetes cluster version comparison tool"
  homepage "https://git.cdm.smis.ch/bitbucket/scm/ccpt/homebrew-cdm-tools"
  version "1.0.2"
  
  # Anonymous read access enabled in Nexus
  url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/version-compare/1.0.2/version-compare-1.0.2-darwin-arm64.tar.gz"
  
  sha256 "f5849a2b9398c49769c297b5d06a30ae68c5d45bad54265fa61b2c747b9e977a"
  
  depends_on arch: :arm64
  
  def install
    bin.install "version-compare"
  end
  
  test do
    assert_match "Version Compare Tool", shell_output("#{bin}/version-compare --help 2>&1", 1)
  end
end
