class VersionCompare < Formula
  desc "CDM tool: version-compare"
  homepage "https://github.com/cdm-ch"
  version "1.6.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/version-compare/1.6.0/version-compare-1.6.0-darwin-intel.tar.gz"
      sha256 "2015c9c6c4773d77cf0532de410173a8011f673bc0d3ea7f2688219e2f333340"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/version-compare/1.6.0/version-compare-1.6.0-darwin-arm.tar.gz"
      sha256 "08889c180249f7c0c5fc6accb1cf2d99b1771b3ca9e56ee93ede7f8ce3921237"
    end
  end

  def install
    bin.install "version-compare"
  end

  test do
    system "#{bin}/version-compare", "--version"
  end
end
