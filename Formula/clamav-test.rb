class ClamavTest < Formula
  desc "CDM tool: clamav-test"
  homepage "https://github.com/cdm-ch"
  version "1.3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/clamav-test/1.3.0/clamav-test-1.3.0-darwin-intel.tar.gz"
      sha256 "fe676abf2e42cb7abf4cd67c24712e356d4c068764da36c9d79964b06bda1243"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/clamav-test/1.3.0/clamav-test-1.3.0-darwin-arm.tar.gz"
      sha256 "960782a32ec71d04188efac58a10a4b81bbb4f4ce9b102f41fb5547d6bfd9419"
    end
  end

  def install
    bin.install "clamav-test"
  end

  test do
    system "#{bin}/clamav-test", "--version"
  end
end
