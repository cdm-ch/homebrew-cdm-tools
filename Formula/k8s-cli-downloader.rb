class K8sCliDownloader < Formula
  desc "CDM tool: k8s-cli-downloader"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.0.12"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/k8s-cli-downloader/1.0.12/k8s-cli-downloader-1.0.12-darwin-intel.tar.gz"
      sha256 "fa1c6310cea1d5fd97883e833763e0acdc07368cb26ee8520177364d94e56735"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/k8s-cli-downloader/1.0.12/k8s-cli-downloader-1.0.12-darwin-arm.tar.gz"
      sha256 "8200525a3562a59f48d0440f8c8670b16dbe23e1d3adc67154894d7f458bf27b"
    end
  end

  def install
    bin.install "k8s-cli-downloader"
  end

  test do
    system "#{bin}/k8s-cli-downloader", "--version"
  end
end
