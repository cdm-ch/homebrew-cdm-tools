class VersionCompare < Formula
  desc "Concurrent Kubernetes cluster version comparison tool written in Go"
  homepage "https://git.cdm.smis.ch/bitbucket/scm/ccpt/homebrew-cdm-tools"
  version "1.0.0"
  license "Proprietary"

  # Nexus URL - anonymous read access enabled
  url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/version-compare/1.0.0/version-compare-1.0.0-darwin-arm64.tar.gz"
  sha256 "267bc3fc01cd9dd43b3a52171a9fd4151e2d1cc83a0eca3d637a2dc136183787"

  # This tool requires ARM64 Macs
  depends_on arch: :arm64

  def install
    bin.install "version-compare"
  end

  def caveats
    <<~EOS
      version-compare has been installed!
      
      Usage:
        version-compare
      
      The tool will interactively guide you through:
        - Selecting two Kubernetes clusters to compare
        - Choosing namespace filters (cdm, ccp, cpm, cpt, all)
        - Selecting resource types (pods, deployments, jobs, cronjobs)
        - Choosing output mode (simple or detailed)
      
      Requirements:
        - Valid kubeconfig at ~/.kube/config
        - Access to the Kubernetes clusters you want to compare
      
      To upgrade to the latest version:
        brew update && brew upgrade version-compare
    EOS
  end

  test do
    # Basic test to ensure binary runs
    assert_match "Kubernetes Version Compare Tool", 
                 shell_output("#{bin}/version-compare --help 2>&1", 1)
  end
end