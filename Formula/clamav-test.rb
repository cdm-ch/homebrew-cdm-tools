class ClamavTest < Formula
  desc "CDM tool: clamav-test"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.0.8"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/clamav-test/1.0.8/clamav-test-1.0.8-darwin-intel.tar.gz"
      sha256 "1e07bd85887bdd7c26d10a589d3f8bca7fea790956a76530301784cf5b79438e"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/clamav-test/1.0.8/clamav-test-1.0.8-darwin-arm.tar.gz"
      sha256 "63451be289a78bdc54605cee14c90274f01e594ee095b07643ee883c83c12a1b"
    end
  end

  def install
    bin.install "clamav-test"
  end

  test do
    system "#{bin}/clamav-test", "--version"
  end
end
