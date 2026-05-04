class VersionCompare < Formula
  desc "CDM tool: version-compare"
  homepage "https://github.com/cdm-ch"
  version "1.2.0"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/version-compare/1.2.0/version-compare-1.2.0-darwin-intel.tar.gz"
      sha256 "e63d9eb39ec703a8c998ff086135f5b762990f3634e50c1f4183db8199e5cf2e"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/version-compare/1.2.0/version-compare-1.2.0-darwin-arm.tar.gz"
      sha256 "adc48dc4fe9c04d70a694aed2c560cadd4e6ec0ecbc86be08183d53b35c575c8"
    end
  end

  def install
    bin.install "version-compare"
  end

  test do
    system "#{bin}/version-compare", "--version"
  end
end
