class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.3.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.3.6/adc-1.3.6-darwin-intel.tar.gz"
      sha256 "419cf7e14d81d259af12645e5810d44c3c0067808b9cc106b44281a9bdb71eab"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.3.6/adc-1.3.6-darwin-arm.tar.gz"
      sha256 "16e05a836f21140773aef11e4b33168da6e7a9bf3419b3118a6142e991448cd5"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end
