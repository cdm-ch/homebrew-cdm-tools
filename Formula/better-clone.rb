class BetterClone < Formula
  desc "CDM tool: better-clone"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.1.1"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/better-clone/1.1.1/better-clone-1.1.1-darwin-intel.tar.gz"
      sha256 "bc5ad978e021a5095b356dee4df1c790e85be85ed65dabe3b872485b3c23e040"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/better-clone/1.1.1/better-clone-1.1.1-darwin-arm.tar.gz"
      sha256 "adba1d529c3e8e7d2efddb0513e0dad48e2c25f08291c249e9a8f2ba25bbc4b7"
    end
  end

  def install
    bin.install "better-clone"
  end

  test do
    system "#{bin}/better-clone", "--version"
  end
end
