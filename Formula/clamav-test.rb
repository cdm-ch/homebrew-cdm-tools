class ClamavTest < Formula
  desc "CDM tool: clamav-test"
  homepage "https://github.com/cdm-ch"
  version "1.4.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/clamav-test/1.4.0/clamav-test-1.4.0-darwin-intel.tar.gz"
      sha256 "2123a2368da28263ba4f60e77e1633a02d7c6f7a8d8b5a16aa8cb4b005ca59ca"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/clamav-test/1.4.0/clamav-test-1.4.0-darwin-arm.tar.gz"
      sha256 "e43f4037832dc3880983faa181bb9b574c0e88dffdd88eb93124dc300237999b"
    end
  end

  def install
    bin.install "clamav-test"
  end

  test do
    system "#{bin}/clamav-test", "--version"
  end
end
