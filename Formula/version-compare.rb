class VersionCompare < Formula
  desc "CDM tool: version-compare"
  homepage "https://github.com/cdm-ch"
  version "1.5.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/version-compare/1.5.0/version-compare-1.5.0-darwin-intel.tar.gz"
      sha256 "97e89903151ad59141f3f7352ef34c51475b8eee01832931f9a7d9bdfdcd52a6"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/version-compare/1.5.0/version-compare-1.5.0-darwin-arm.tar.gz"
      sha256 "0d39a18bd9897c870619d7c3eb20ba702454ba53f31307d4a55cdced727cd3ce"
    end
  end

  def install
    bin.install "version-compare"
  end

  test do
    system "#{bin}/version-compare", "--version"
  end
end
