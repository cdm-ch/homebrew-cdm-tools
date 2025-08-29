class K8sCliDownloader < Formula
  desc "CDM tool: k8s-cli-downloader"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.0.15"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/k8s-cli-downloader/1.0.15/k8s-cli-downloader-1.0.15-darwin-intel.tar.gz"
      sha256 "e184132bf93305ea908d89bc224de24abe96e0eb7def5e70105e85a836fed350"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/k8s-cli-downloader/1.0.15/k8s-cli-downloader-1.0.15-darwin-arm.tar.gz"
      sha256 "1926ddc22f43f3d3a983cb00e8056c0bea26894c04a042d2b2fe572f382e6b5d"
    end
  end

  def install
    bin.install "k8s-cli-downloader"
  end

  test do
    system "#{bin}/k8s-cli-downloader", "--version"
  end
end
