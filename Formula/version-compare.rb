class VersionCompare < Formula
  desc "CDM tool: version-compare"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.0.12"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/version-compare/1.0.12/version-compare-1.0.12-darwin-intel.tar.gz"
      sha256 "8a6dd3aabf37ad00c7f984fcc3ef97869469385f6baa7f9674e3e872744e5538"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/version-compare/1.0.12/version-compare-1.0.12-darwin-arm.tar.gz"
      sha256 "7732beb039514642dc1af497a4c41b9c3d4ba377bd1040d1854947c653879b52"
    end
  end

  def install
    bin.install "version-compare"
  end

  test do
    system "#{bin}/version-compare", "--version"
  end
end
