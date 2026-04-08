class VersionCompare < Formula
  desc "CDM tool: version-compare"
  homepage "https://github.com/cdm-ch"
  version "1.1.0"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/version-compare/1.1.0/version-compare-1.1.0-darwin-intel.tar.gz"
      sha256 "a5f68ece3e66d7e16f645ec68446bd5c5262c35893326d607687117f00ad06a7"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/version-compare/1.1.0/version-compare-1.1.0-darwin-arm.tar.gz"
      sha256 "2d418242d44e01c3b97e268ff50f55e05f49f696c9de6a2380c74f133bfa0c23"
    end
  end

  def install
    bin.install "version-compare"
  end

  test do
    system "#{bin}/version-compare", "--version"
  end
end
