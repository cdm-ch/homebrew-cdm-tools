class BetterClone < Formula
  desc "CDM tool: better-clone"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.0.9"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/better-clone/1.0.9/better-clone-1.0.9-darwin-intel.tar.gz"
      sha256 "6bdee6f5c70fdab8b9848a32efc9b7f4aa241bfa68e527e09cf859e385ab701f"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/better-clone/1.0.9/better-clone-1.0.9-darwin-arm.tar.gz"
      sha256 "cdd7945d3582bd81cf3f23b0e2c158b8ea70fafe1d2b9c71315b79cc9746e5a2"
    end
  end

  def install
    bin.install "better-clone"
  end

  test do
    system "#{bin}/better-clone", "--version"
  end
end
