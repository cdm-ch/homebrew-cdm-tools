class ClamavTest < Formula
  desc "CDM tool: clamav-test"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.0.6"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/clamav-test/1.0.6/clamav-test-1.0.6-darwin-intel.tar.gz"
      sha256 "c8d5109605effc8477a2bb9282bb859b3db5110699f86c30555c23a900d3b8b4"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/clamav-test/1.0.6/clamav-test-1.0.6-darwin-arm.tar.gz"
      sha256 "5675a5e53f2416eb06a1f1b9fae0b78a36910ca7c2964cba8c1c22afb9661a70"
    end
  end

  def install
    bin.install "clamav-test"
  end

  test do
    system "#{bin}/clamav-test", "--version"
  end
end
