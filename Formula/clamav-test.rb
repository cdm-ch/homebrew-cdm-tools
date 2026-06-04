class ClamavTest < Formula
  desc "CDM tool: clamav-test"
  homepage "https://github.com/cdm-ch"
  version "1.2.0"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/clamav-test/1.2.0/clamav-test-1.2.0-darwin-intel.tar.gz"
      sha256 "5c35053c396783d709d81bbcdd4a8d6a4ee79bec3ca539f2aea7d77aaff63990"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/clamav-test/1.2.0/clamav-test-1.2.0-darwin-arm.tar.gz"
      sha256 "c8b6d4a91d95f7af264d7da15a293a8b3e3b738416220e7fe1207d75201238ee"
    end
  end

  def install
    bin.install "clamav-test"
  end

  test do
    system "#{bin}/clamav-test", "--version"
  end
end
