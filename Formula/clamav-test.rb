class ClamavTest < Formula
  desc "CDM tool: clamav-test"
  homepage "https://github.com/cdm-ch"
  version "1.1.0"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/clamav-test/1.1.0/clamav-test-1.1.0-darwin-intel.tar.gz"
      sha256 "7d1d899eceb4d966d38b96c292f6004a813ccc8f9ab982940fc0c6255cbff0b3"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/clamav-test/1.1.0/clamav-test-1.1.0-darwin-arm.tar.gz"
      sha256 "fb77c9a846b335adf985c1bdb20d8f69b46a58778632ea0d712306c5a6f8f125"
    end
  end

  def install
    bin.install "clamav-test"
  end

  test do
    system "#{bin}/clamav-test", "--version"
  end
end
