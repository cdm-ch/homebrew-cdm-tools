class ReleaseHelper < Formula
  desc "CDM tool: release-helper"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.0.1"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/release-helper/1.0.1/release-helper-1.0.1-darwin-intel.tar.gz"
      sha256 ""
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/release-helper/1.0.1/release-helper-1.0.1-darwin-arm.tar.gz"
      sha256 ""
    end
  end

  def install
    bin.install "release-helper"
  end

  test do
    system "#{bin}/release-helper", "--version"
  end
end
