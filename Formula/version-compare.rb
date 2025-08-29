class VersionCompare < Formula
  desc "CDM tool: version-compare"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.0.14"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/version-compare/1.0.14/version-compare-1.0.14-darwin-intel.tar.gz"
      sha256 "e7fe507dd18a311ff2f4fbd468b49e13aeb8bebedacf546046e283a73d6584d9"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/version-compare/1.0.14/version-compare-1.0.14-darwin-arm.tar.gz"
      sha256 "5451fe6f03bd6a58e786634e1e05a1350980560a1d7385a7e08a2973ff180f03"
    end
  end

  def install
    bin.install "version-compare"
  end

  test do
    system "#{bin}/version-compare", "--version"
  end
end
