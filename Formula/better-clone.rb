class BetterClone < Formula
  desc "CDM tool: better-clone"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.0.10"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/better-clone/1.0.10/better-clone-1.0.10-darwin-intel.tar.gz"
      sha256 "1899c7f88e6541b107adeb1f4596f9d05626337e0deb447158461098268a9dce"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/better-clone/1.0.10/better-clone-1.0.10-darwin-arm.tar.gz"
      sha256 "06dd9c8dbfeea4e816c555e34eb5d78999b02979e8bdbba6d38b18bd6c4990e3"
    end
  end

  def install
    bin.install "better-clone"
  end

  test do
    system "#{bin}/better-clone", "--version"
  end
end
