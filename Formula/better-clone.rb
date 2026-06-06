class BetterClone < Formula
  desc "CDM tool: better-clone"
  homepage "https://github.com/cdm-ch"
  version "2.3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/better-clone/2.3.0/better-clone-2.3.0-darwin-intel.tar.gz"
      sha256 "bc265c1524b71807b63d778c56e7830c4261b08cbbf001176656bdeb85e3f683"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/better-clone/2.3.0/better-clone-2.3.0-darwin-arm.tar.gz"
      sha256 "5e42fe30e882e923c81e69ff7eb72da85cfbd84612de8e829b08968872e9cca5"
    end
  end

  def install
    bin.install "better-clone"
  end

  test do
    system "#{bin}/better-clone", "--version"
  end
end
