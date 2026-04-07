class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.6.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.6.0/adc-1.6.0-darwin-intel.tar.gz"
      sha256 "c9cef71681e74ff88ff9f1787de50773f6d82a85db1d2908dd13f839f3fcae73"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.6.0/adc-1.6.0-darwin-arm.tar.gz"
      sha256 "10c4a65720cb241138b9020852f5bf27b12615635b52b2165e5376aee2c084a3"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end
