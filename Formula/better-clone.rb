class BetterClone < Formula
  desc "CDM tool: better-clone"
  homepage "https://github.com/cdm-ch"
  version "2.0.0"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/better-clone/2.0.0/better-clone-2.0.0-darwin-intel.tar.gz"
      sha256 "4e9f8c48f89c80689ad2173a666f66286d62578f08dd63d3f39e77c99beef5c8"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/better-clone/2.0.0/better-clone-2.0.0-darwin-arm.tar.gz"
      sha256 "63b0eecc0fa39a0c604245f4f561750f8cb7fbeb7fb7dde64e81b427acf24faa"
    end
  end

  def install
    bin.install "better-clone"
  end

  test do
    system "#{bin}/better-clone", "--version"
  end
end
