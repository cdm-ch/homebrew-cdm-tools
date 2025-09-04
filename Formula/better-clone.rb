class BetterClone < Formula
  desc "CDM tool: better-clone"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.1.0"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/better-clone/1.1.0/better-clone-1.1.0-darwin-intel.tar.gz"
      sha256 "05b75e437221f6b1ae66d276bcad2c8228963ce403108451abeb8bb67c8c2864"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/better-clone/1.1.0/better-clone-1.1.0-darwin-arm.tar.gz"
      sha256 "99cc42abceef607f5999fc172a699a65d9868ab66684e71477dcfb101d6e79f5"
    end
  end

  def install
    bin.install "better-clone"
  end

  test do
    system "#{bin}/better-clone", "--version"
  end
end
