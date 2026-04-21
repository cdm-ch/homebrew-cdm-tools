class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://github.com/cdm-ch"
  version "1.9.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.9.0/adc-1.9.0-darwin-intel.tar.gz"
      sha256 "4db3b234109e1f000657f2fef49dba0aeb6487ac18608c0b6e2fa8986985014b"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.9.0/adc-1.9.0-darwin-arm.tar.gz"
      sha256 "23d9dc3e5f45c1c1be7723373851e4eb0c7da6932c20d729c82911b5c3ac006e"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end
