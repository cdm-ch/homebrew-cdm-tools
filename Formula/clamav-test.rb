class clamav_test < Formula
  desc "CDM tool: clamav-test"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "0.1.1"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/clamav-test/0.1.1/clamav-test-0.1.1-darwin-intel.tar.gz"
      sha256 ""
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/clamav-test/0.1.1/clamav-test-0.1.1-darwin-arm.tar.gz"
      sha256 ""
    end
  end

  def install
    bin.install "clamav-test"
  end

  test do
    system "#{bin}/clamav-test", "--version"
  end
end
