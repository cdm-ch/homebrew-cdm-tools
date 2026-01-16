class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.4.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.4.1/adc-1.4.1-darwin-intel.tar.gz"
      sha256 "95957f12754f9076a478b916736b7bff49fce156397576bbafa6c1d049ff5411"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.4.1/adc-1.4.1-darwin-arm.tar.gz"
      sha256 "0e6b5a3d192855c2b9af67f073f098dcfb02683ec997e0816b9953142fd92c93"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end
