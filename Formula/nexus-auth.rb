class NexusAuth < Formula
  desc "CDM tool: nexus-auth"
  homepage "https://github.com/cdm-ch"
  version "1.1.0"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/nexus-auth/1.1.0/nexus-auth-1.1.0-darwin-intel.tar.gz"
      sha256 "a3442f8030a1736cb0d0a63a4bb6830da3fa9609adea79d2f09046a729308ed4"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/nexus-auth/1.1.0/nexus-auth-1.1.0-darwin-arm.tar.gz"
      sha256 "9fbfa3701894cb82ec80eabd3a4a8c7882eac2c7464da1d9cf31ae738863d4c3"
    end
  end

  def install
    bin.install "nexus-auth"
  end

  test do
    system "#{bin}/nexus-auth", "--version"
  end
end
