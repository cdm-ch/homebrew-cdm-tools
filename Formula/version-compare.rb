class VersionCompare < Formula
  desc "CDM tool: version-compare"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.0.16"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/version-compare/1.0.16/version-compare-1.0.16-darwin-intel.tar.gz"
      sha256 "881ca808a57ecaff9352d1108413ee60daff6bfb0266904c6b5527fd7d0ab4fa"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/version-compare/1.0.16/version-compare-1.0.16-darwin-arm.tar.gz"
      sha256 "6b4dcbb85ec3e39a0afe938b042d2b098ce6ccb6dad609957298e540b9b4e692"
    end
  end

  def install
    bin.install "version-compare"
  end

  test do
    system "#{bin}/version-compare", "--version"
  end
end
