class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://github.com/cdm-ch"
  version "1.17.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.17.0/adc-1.17.0-darwin-intel.tar.gz"
      sha256 "fee47c07f77e2a047fba45790857fd7bbfded44a3b6df48db63f9f677929cbdc"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.17.0/adc-1.17.0-darwin-arm.tar.gz"
      sha256 "f756009768caaa2afb1dbc09ba9cb8ece7c32e0139acde1c5bfcc0c31b6584a2"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end
