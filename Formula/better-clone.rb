class BetterClone < Formula
  desc "CDM tool: better-clone"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.0.8"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/better-clone/1.0.8/better-clone-1.0.8-darwin-intel.tar.gz"
      sha256 "120e95472c4810c10dfe38c01e43351b32816586a19fa642f69095a0db5ee912"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/better-clone/1.0.8/better-clone-1.0.8-darwin-arm.tar.gz"
      sha256 "ecf19f8854bba7352f78b1c09257fcb59979c6ebddeab3ca574053838dac2a07"
    end
  end

  def install
    bin.install "better-clone"
  end

  test do
    system "#{bin}/better-clone", "--version"
  end
end
