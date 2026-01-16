class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.4.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.4.4/adc-1.4.4-darwin-intel.tar.gz"
      sha256 "8aa39238f8a7b92ba32bd445bd986756da12e3efb24ffb63b224cac627bfdadb"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.4.4/adc-1.4.4-darwin-arm.tar.gz"
      sha256 "5925205fbb59fdcded1754129e3e8f921af35e0d53026a4a1c56fce668b51c0c"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end
