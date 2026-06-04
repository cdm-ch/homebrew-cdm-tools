class VersionCompare < Formula
  desc "CDM tool: version-compare"
  homepage "https://github.com/cdm-ch"
  version "1.3.0"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/version-compare/1.3.0/version-compare-1.3.0-darwin-intel.tar.gz"
      sha256 "87a9a199fde885879dff01375c2ff7f86704993e5e40d896e159466ac46b692b"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/version-compare/1.3.0/version-compare-1.3.0-darwin-arm.tar.gz"
      sha256 "876e370c4809ba4e92c4ac816fddab3dd3b6739c2fd175e43c66460145e81703"
    end
  end

  def install
    bin.install "version-compare"
  end

  test do
    system "#{bin}/version-compare", "--version"
  end
end
