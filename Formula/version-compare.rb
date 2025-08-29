class VersionCompare < Formula
  desc "CDM tool: version-compare"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.0.13"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/version-compare/1.0.13/version-compare-1.0.13-darwin-intel.tar.gz"
      sha256 "4520e45cd04902251832058f77f64a09abf9640095953bc6468b75e19a34061d"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/version-compare/1.0.13/version-compare-1.0.13-darwin-arm.tar.gz"
      sha256 "6c60cf49d4e3e83172e00e6fbc58a660b9ea1465eab5fb9f6b24a995e144b2c1"
    end
  end

  def install
    bin.install "version-compare"
  end

  test do
    system "#{bin}/version-compare", "--version"
  end
end
