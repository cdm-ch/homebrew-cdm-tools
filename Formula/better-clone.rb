class BetterClone < Formula
  desc "CDM tool: better-clone"
  homepage "https://github.com/cdm-ch"
  version "2.5.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/better-clone/2.5.1/better-clone-2.5.1-darwin-intel.tar.gz"
      sha256 "088bac3646e824913b9b9e18a3c30a5238cfb8b356b2bd8848571008d4025fb2"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/better-clone/2.5.1/better-clone-2.5.1-darwin-arm.tar.gz"
      sha256 "d39a9c8e6ceaa239c228a9cfcf82e5df3c63de52042faad4e3c8755b920aded3"
    end
  end

  def install
    bin.install "better-clone"
  end

  test do
    system "#{bin}/better-clone", "--version"
  end
end
