class K8sCliDownloader < Formula
  desc "CDM tool: k8s-cli-downloader"
  homepage "https://github.com/cdm-ch"
  version "1.4.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/k8s-cli-downloader/1.4.1/k8s-cli-downloader-1.4.1-darwin-intel.tar.gz"
      sha256 "46f7e6fee4b7fd10460da1000c45fef17d9b32aee3b9d8517d8844a1c001a29f"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/k8s-cli-downloader/1.4.1/k8s-cli-downloader-1.4.1-darwin-arm.tar.gz"
      sha256 "1d85ff72ea57dcc27f5f7c6ca348529edc042207a64e343a12bdd660bd6c1a18"
    end
  end

  def install
    bin.install "k8s-cli-downloader"
  end

  test do
    system "#{bin}/k8s-cli-downloader", "--version"
  end
end
