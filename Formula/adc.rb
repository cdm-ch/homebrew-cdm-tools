class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://github.com/cdm-ch"
  version "1.7.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.7.0/adc-1.7.0-darwin-intel.tar.gz"
      sha256 "5a5ad3d9e1cfbd94308e584b30039f8f0990a0adfc983815adc87d117f2f985d"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.7.0/adc-1.7.0-darwin-arm.tar.gz"
      sha256 "3dae79bb3a627e31895bb3dc27dca98f3e649263fa9847dbe58829a42825c3b9"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end
