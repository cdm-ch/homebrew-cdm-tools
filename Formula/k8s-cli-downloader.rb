class K8sCliDownloader < Formula
  desc "CDM tool: k8s-cli-downloader"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.0.10"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/k8s-cli-downloader/1.0.10/k8s-cli-downloader-1.0.10-darwin-intel.tar.gz"
      sha256 "6fe34748702059d02eadf075e0f38a5dcf058d08c3946200a6cd952b81c77071"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/k8s-cli-downloader/1.0.10/k8s-cli-downloader-1.0.10-darwin-arm.tar.gz"
      sha256 "0b8bdfa5312ee0c27a85cef183f49f49308f50b3e85e297b24941cacf2827cf2"
    end
  end

  def install
    bin.install "k8s-cli-downloader"
  end

  test do
    system "#{bin}/k8s-cli-downloader", "--version"
  end
end
