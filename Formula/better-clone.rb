class BetterClone < Formula
  desc "CDM tool: better-clone"
  homepage "https://github.com/cdm-ch"
  version "1.2.4"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/better-clone/1.2.4/better-clone-1.2.4-darwin-intel.tar.gz"
      sha256 "feaabb256271ed047cf2e8620f48c6327a39faa0edb817caf6f139d7de08fb2f"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/better-clone/1.2.4/better-clone-1.2.4-darwin-arm.tar.gz"
      sha256 "e20e62dac40dd71f1c45226da832ae7d4dbaa5619fdc13464fab768bd6b988d9"
    end
  end

  def install
    bin.install "better-clone"
  end

  test do
    system "#{bin}/better-clone", "--version"
  end
end
