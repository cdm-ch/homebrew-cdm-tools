class K8sCliDownloader < Formula
  desc "CDM tool: k8s-cli-downloader"
  homepage "https://github.com/cdm-ch"
  version "1.2.0"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/k8s-cli-downloader/1.2.0/k8s-cli-downloader-1.2.0-darwin-intel.tar.gz"
      sha256 "08a7c9f97276d401ee98af6159e1aed9dc286f27efefdeb441aea0f60d9fcd9a"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/k8s-cli-downloader/1.2.0/k8s-cli-downloader-1.2.0-darwin-arm.tar.gz"
      sha256 "a039de93394e815b2646c308fd2c9836969592aedb06b45da1ad32075d234a44"
    end
  end

  def install
    bin.install "k8s-cli-downloader"
  end

  test do
    system "#{bin}/k8s-cli-downloader", "--version"
  end
end
