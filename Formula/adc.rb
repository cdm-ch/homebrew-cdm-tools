class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.3.11"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.3.11/adc-1.3.11-darwin-intel.tar.gz"
      sha256 "850228eec3ce8a5e21532ad0592ecafa636a6784c18dfc50fc27cea39f04a2b6"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.3.11/adc-1.3.11-darwin-arm.tar.gz"
      sha256 "286c98184bee89c23355fb0df5f71169cff9d21aa0b0d95d093c8019504c1372"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end
