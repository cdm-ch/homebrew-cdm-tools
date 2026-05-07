class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://github.com/cdm-ch"
  version "1.12.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.12.3/adc-1.12.3-darwin-intel.tar.gz"
      sha256 "c49eec6af40b4fd0bab0d30b41685919f9e420d458c9c73274e522cc12552d16"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.12.3/adc-1.12.3-darwin-arm.tar.gz"
      sha256 "97eb1d6f4fee941cd379830019a78891f7d21fbd7a2f5ff9569b337129f43556"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end
