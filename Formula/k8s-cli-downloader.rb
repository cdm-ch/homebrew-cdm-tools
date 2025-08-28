# Homebrew Formula for k8s-cli-downloader v1.0.0

class K8sCliDownloader < Formula
  desc "Unified downloader for Kubernetes CLI tools (kubectl, flux, istioctl)"
  homepage "https://git.cdm.smis.ch/bitbucket/scm/ccpt/convenience-scripts"
  version "1.0.0"
  
  # Anonymous read access enabled in Nexus
  url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/k8s-cli-downloader/1.0.0/k8s-cli-downloader-1.0.0-darwin-arm64.tar.gz"
  
  sha256 "60f82a0edb1c4e2b6148eeb340c20f3028580bfe05329ef63b50ab96b98df09b"
  
  depends_on arch: :arm64
  
  def install
    bin.install "k8s-cli-downloader"
  end
  
  test do
    assert_match "kubectl", shell_output("#{bin}/k8s-cli-downloader list kubectl --limit 1")
  end
end
