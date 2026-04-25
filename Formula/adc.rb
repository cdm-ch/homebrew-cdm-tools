class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://github.com/cdm-ch"
  version "1.11.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.11.1/adc-1.11.1-darwin-intel.tar.gz"
      sha256 "9250ace2b41edeab8e6ece2c8713bcc18961480155aab40023914ec08aa2e20c"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.11.1/adc-1.11.1-darwin-arm.tar.gz"
      sha256 "b14721084fea9c3bf7d5ff88f45965208167ebb5201ad2519bb05bb0ed0d9764"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end
