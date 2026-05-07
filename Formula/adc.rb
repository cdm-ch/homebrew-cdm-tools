class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://github.com/cdm-ch"
  version "1.13.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.13.0/adc-1.13.0-darwin-intel.tar.gz"
      sha256 "51ad4e0b5ae7edcc02480567628e94abc2e209b71cf5cfd2b174e8a91925ee9e"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.13.0/adc-1.13.0-darwin-arm.tar.gz"
      sha256 "ae8c49c2b952b694a9472e20c0c0d80edaece8d2d590676b62bf59869d8b02a4"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end
