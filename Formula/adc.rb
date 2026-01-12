class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.3.12"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.3.12/adc-1.3.12-darwin-intel.tar.gz"
      sha256 "7102da8ae3e0736f80460de9a3c558bcafa33513243df6f80d54181abbea9dc3"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.3.12/adc-1.3.12-darwin-arm.tar.gz"
      sha256 "8669407fcac867864645d2fa6db0dfe066bf11545025b98005d120f9a7990ab7"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end
