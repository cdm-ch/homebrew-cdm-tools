class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.4.10"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.4.10/adc-1.4.10-darwin-intel.tar.gz"
      sha256 "b497bf1702030e58b253da1f6c7c2245988b709d03ed8b62818b00d5d5c08268"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.4.10/adc-1.4.10-darwin-arm.tar.gz"
      sha256 "f32c8ada11b0ec1756f4466abc0628b69b078a3f6e6348adff40bac765563530"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end
