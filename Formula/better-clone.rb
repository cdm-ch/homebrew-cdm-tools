class BetterClone < Formula
  desc "CDM tool: better-clone"
  homepage "https://github.com/cdm-ch"
  version "1.2.1"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/better-clone/1.2.1/better-clone-1.2.1-darwin-intel.tar.gz"
      sha256 "4328af44f9f507b29d91a67f8c65e01392d0c1708eff145e930d0a973530173e"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/better-clone/1.2.1/better-clone-1.2.1-darwin-arm.tar.gz"
      sha256 "3dbacd22487f1618f453429845d216bdb9db10d2cb2f53971c24b88d0f495dea"
    end
  end

  def install
    bin.install "better-clone"
  end

  test do
    system "#{bin}/better-clone", "--version"
  end
end
