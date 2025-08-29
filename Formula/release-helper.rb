class ReleaseHelper < Formula
  desc "CDM tool: release-helper"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.0.3"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/release-helper/1.0.3/release-helper-1.0.3-darwin-intel.tar.gz"
      sha256 "aa46904fac76af24dd1e04c862f79f7ab663dd3de105c492756047a6f125c853"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/release-helper/1.0.3/release-helper-1.0.3-darwin-arm.tar.gz"
      sha256 "ea3dc250fb6a711756d10e02f574bc5fb9e4dbd5d822965992956030e48315f5"
    end
  end

  def install
    bin.install "release-helper"
  end

  test do
    system "#{bin}/release-helper", "--version"
  end
end
