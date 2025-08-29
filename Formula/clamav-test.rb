class ClamavTest < Formula
  desc "CDM tool: clamav-test"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.0.7"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/clamav-test/1.0.7/clamav-test-1.0.7-darwin-intel.tar.gz"
      sha256 "f5e2b28faefb034d9e334384eb74547b41f01540e319c4d526c6227cafa172d3"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/clamav-test/1.0.7/clamav-test-1.0.7-darwin-arm.tar.gz"
      sha256 "604e2a214882299d69bc5bae80690b5e8e9a977e1ab0f69ad1a5d201ea5ee777"
    end
  end

  def install
    bin.install "clamav-test"
  end

  test do
    system "#{bin}/clamav-test", "--version"
  end
end
