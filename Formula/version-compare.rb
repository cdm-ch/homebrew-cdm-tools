class VersionCompare < Formula
  desc "CDM tool: version-compare"
  homepage "https://github.com/cdm-ch"
  version "1.6.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/version-compare/1.6.1/version-compare-1.6.1-darwin-intel.tar.gz"
      sha256 "4377e587acaa765c5cc204119f578c9a21ce3a8efdb64c4990d8e4a7823f50be"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/version-compare/1.6.1/version-compare-1.6.1-darwin-arm.tar.gz"
      sha256 "3d36bb9b8b0ea9d3fde497f46f75549a9954314064527693693885e6f3c0be6a"
    end
  end

  def install
    bin.install "version-compare"
  end

  test do
    system "#{bin}/version-compare", "--version"
  end
end
