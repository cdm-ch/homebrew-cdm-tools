class K8sCliDownloader < Formula
  desc "CDM tool: k8s-cli-downloader"
  homepage "https://github.com/cdm-ch"
  version "1.3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/k8s-cli-downloader/1.3.0/k8s-cli-downloader-1.3.0-darwin-intel.tar.gz"
      sha256 "fc40271bcef964a528339ba531cb4b5ccab6a6bfc3ceecd8924a0747c1cbb402"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/k8s-cli-downloader/1.3.0/k8s-cli-downloader-1.3.0-darwin-arm.tar.gz"
      sha256 "3157f855bf889d6a3321b42ed33f5f4d644ae960bfc259f28f29533c095acebe"
    end
  end

  def install
    bin.install "k8s-cli-downloader"
  end

  test do
    system "#{bin}/k8s-cli-downloader", "--version"
  end
end
