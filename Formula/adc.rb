class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://github.com/cdm-ch"
  version "1.15.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.15.1/adc-1.15.1-darwin-intel.tar.gz"
      sha256 "ac6d07a25b240a68aeb0f5625884b09eed484504addbf7f174d7da1e313b22e6"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.15.1/adc-1.15.1-darwin-arm.tar.gz"
      sha256 "b17ea662431d629ce2953a555caaeed3af4298f2a9232999627a99d56496317f"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end
