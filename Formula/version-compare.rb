class VersionCompare < Formula
  desc "CDM tool: version-compare"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.0.15"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/version-compare/1.0.15/version-compare-1.0.15-darwin-intel.tar.gz"
      sha256 "ee1b7dd33e58675e1fb6aab7fccb875d331eecb206fc84ca90b1c059aebe4446"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/version-compare/1.0.15/version-compare-1.0.15-darwin-arm.tar.gz"
      sha256 "f583d5119e8054acd8a43b29740d444b252c46fe905d78c8a0eed661a6ce47b3"
    end
  end

  def install
    bin.install "version-compare"
  end

  test do
    system "#{bin}/version-compare", "--version"
  end
end
