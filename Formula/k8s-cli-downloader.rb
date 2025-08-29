class K8sCliDownloader < Formula
  desc "CDM tool: k8s-cli-downloader"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.0.13"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/k8s-cli-downloader/1.0.13/k8s-cli-downloader-1.0.13-darwin-intel.tar.gz"
      sha256 "eafe51fc57c705ca9ed2b740b5c82d6575a19d53f2380cf52560af474f78c175"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/k8s-cli-downloader/1.0.13/k8s-cli-downloader-1.0.13-darwin-arm.tar.gz"
      sha256 "a4aeb2d7720e885940d258d7f5890431c8be68326c191dd03acc9a095805238b"
    end
  end

  def install
    bin.install "k8s-cli-downloader"
  end

  test do
    system "#{bin}/k8s-cli-downloader", "--version"
  end
end
