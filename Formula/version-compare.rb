class VersionCompare < Formula
  desc "CDM tool: version-compare"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.0.17"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/version-compare/1.0.17/version-compare-1.0.17-darwin-intel.tar.gz"
      sha256 "215bf21f084199d524598cd56bd2ca02a5eb3172a9e7d0c3a5b75686c11f461b"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/version-compare/1.0.17/version-compare-1.0.17-darwin-arm.tar.gz"
      sha256 "412550082228ff75a7ad7aa551cfe0ba76a52acd82dc2392e3b7c0bd31b89d9f"
    end
  end

  def install
    bin.install "version-compare"
  end

  test do
    system "#{bin}/version-compare", "--version"
  end
end
