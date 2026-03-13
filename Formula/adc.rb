class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.5.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.5.1/adc-1.5.1-darwin-intel.tar.gz"
      sha256 "c42dd333c1b8788eccb5a779947a1a089a19615952ba7f1992de9b2e0f172061"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.5.1/adc-1.5.1-darwin-arm.tar.gz"
      sha256 "017e53869e28721f3eb2eaa3cd18e7c0acdb6a9b0c907e5d0247c893bc6e3eac"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end
