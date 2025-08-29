class VersionCompare < Formula
  desc "CDM tool: version-compare"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.0.11"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/version-compare/1.0.11/version-compare-1.0.11-darwin-intel.tar.gz"
      sha256 ""
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/version-compare/1.0.11/version-compare-1.0.11-darwin-arm.tar.gz"
      sha256 ""
    end
  end

  def install
    bin.install "version-compare"
  end

  test do
    system "#{bin}/version-compare", "--version"
  end
end
