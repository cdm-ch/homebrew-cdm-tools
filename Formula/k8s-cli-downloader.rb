class K8sCliDownloader < Formula
  desc "CDM tool: k8s-cli-downloader"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.0.14"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/k8s-cli-downloader/1.0.14/k8s-cli-downloader-1.0.14-darwin-intel.tar.gz"
      sha256 "dd30195738571f6ac73a1e37939d7e589405c38bd7839d79bbbc5b78bded2b5d"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/k8s-cli-downloader/1.0.14/k8s-cli-downloader-1.0.14-darwin-arm.tar.gz"
      sha256 "3e92172428f026fd8a1968fc02e748ba669b0d9c85e29d843d9f9896d1517c00"
    end
  end

  def install
    bin.install "k8s-cli-downloader"
  end

  test do
    system "#{bin}/k8s-cli-downloader", "--version"
  end
end
