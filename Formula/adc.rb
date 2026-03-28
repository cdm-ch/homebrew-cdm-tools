class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.5.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.5.2/adc-1.5.2-darwin-intel.tar.gz"
      sha256 "24d8336faae712e00a739afab30a533743bbea66e6b368238db3996a80b42b30"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.5.2/adc-1.5.2-darwin-arm.tar.gz"
      sha256 "d920c589f09154cf240762a7b07ec4346699dfe763fbf6df3bcd0b0c50f65e41"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end
