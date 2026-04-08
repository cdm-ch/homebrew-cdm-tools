class K8sCliDownloader < Formula
  desc "CDM tool: k8s-cli-downloader"
  homepage "https://github.com/cdm-ch"
  version "1.1.0"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/k8s-cli-downloader/1.1.0/k8s-cli-downloader-1.1.0-darwin-intel.tar.gz"
      sha256 "4c2bc616e4afeba2cf2dbb7c39b3a27f71161bf2b04fe2c3407cbf221aaf6589"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/k8s-cli-downloader/1.1.0/k8s-cli-downloader-1.1.0-darwin-arm.tar.gz"
      sha256 "00dacf61e02bec29425819e06e96a84f1165acdcb16902be68cec4643dc096ce"
    end
  end

  def install
    bin.install "k8s-cli-downloader"
  end

  test do
    system "#{bin}/k8s-cli-downloader", "--version"
  end
end
