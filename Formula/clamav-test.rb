class ClamavTest < Formula
  desc "CDM tool: clamav-test"
  homepage "https://github.com/cdm-ch"
  version "1.4.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/clamav-test/1.4.1/clamav-test-1.4.1-darwin-intel.tar.gz"
      sha256 "0f981096f59bf40d8a840d11674666d01127c92f3c8dc7cf11aa8953066aab21"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/clamav-test/1.4.1/clamav-test-1.4.1-darwin-arm.tar.gz"
      sha256 "d9ed41a42e7b9110fd94eb099473a62a25a769c2727274a618a99a4fe76b41d2"
    end
  end

  def install
    bin.install "clamav-test"
  end

  test do
    system "#{bin}/clamav-test", "--version"
  end
end
