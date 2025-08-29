class K8sCliDownloader < Formula
  desc "CDM tool: k8s-cli-downloader"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.0.5"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/k8s-cli-downloader/1.0.5/k8s-cli-downloader-1.0.5-darwin-intel.tar.gz"
      sha256 ""
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/k8s-cli-downloader/1.0.5/k8s-cli-downloader-1.0.5-darwin-arm.tar.gz"
      sha256 ""
    end
  end

  def install
    bin.install "k8s-cli-downloader"
  end

  test do
    system "#{bin}/k8s-cli-downloader", "--version"
  end
end
