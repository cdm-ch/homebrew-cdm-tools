class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.4.9"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.4.9/adc-1.4.9-darwin-intel.tar.gz"
      sha256 "512f5831ab05203d01ac5e6901829ff96eb0d8194a17b11925024fa6889dd8ac"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.4.9/adc-1.4.9-darwin-arm.tar.gz"
      sha256 "8086cb27b74fcc36ad6bbe50ba858e95c198b22a3eb84ff01a9242f2c42944cd"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end
