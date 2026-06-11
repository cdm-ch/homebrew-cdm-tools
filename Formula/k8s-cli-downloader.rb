class K8sCliDownloader < Formula
  desc "CDM tool: k8s-cli-downloader"
  homepage "https://github.com/cdm-ch"
  version "1.4.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/k8s-cli-downloader/1.4.0/k8s-cli-downloader-1.4.0-darwin-intel.tar.gz"
      sha256 "706ab71fb9ea6f07b49daa156b7ab7c2523d1f3a85276347f1a15dffb55cec9f"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/k8s-cli-downloader/1.4.0/k8s-cli-downloader-1.4.0-darwin-arm.tar.gz"
      sha256 "91dec486a4031d8c6d180d3af58daf9db50cf09a52c78d49fa1187d584113692"
    end
  end

  def install
    bin.install "k8s-cli-downloader"
  end

  test do
    system "#{bin}/k8s-cli-downloader", "--version"
  end
end
