class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.3.8"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.3.8/adc-1.3.8-darwin-intel.tar.gz"
      sha256 "adf76db51cc46e66046f712b91186a680d6d9d0c03abf9cc26ac35f218642f12"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.3.8/adc-1.3.8-darwin-arm.tar.gz"
      sha256 "2fcd8a3c2950dd56ee8faf45c8b04dc53849b13d349c11faad9157f709506567"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end
