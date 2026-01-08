class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.3.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.3.4/adc-1.3.4-darwin-intel.tar.gz"
      sha256 "c3420da96734893459519535a6dc37d7a2d8615282c5ea8799d26a8f8ec68203"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.3.4/adc-1.3.4-darwin-arm.tar.gz"
      sha256 "bf6ff9b6680b6df1cacd80a580c1fcae95fd9ef825311276e4c69c329e8f0e7c"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end
