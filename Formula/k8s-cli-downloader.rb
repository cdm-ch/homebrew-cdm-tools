class K8sCliDownloader < Formula
  desc "CDM tool: k8s-cli-downloader"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.0.9"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/k8s-cli-downloader/1.0.9/k8s-cli-downloader-1.0.9-darwin-intel.tar.gz"
      sha256 "f2e13e8d379e66860dee9d24f8abdd9ac466fd2efd7bb5e16456c3058ab581dd"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/k8s-cli-downloader/1.0.9/k8s-cli-downloader-1.0.9-darwin-arm.tar.gz"
      sha256 "f2a7169466291b973584d2032b82a900a5ba2444d7180b11681a2240815c1bc8"
    end
  end

  def install
    bin.install "k8s-cli-downloader"
  end

  test do
    system "#{bin}/k8s-cli-downloader", "--version"
  end
end
