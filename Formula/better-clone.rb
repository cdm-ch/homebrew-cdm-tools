class BetterClone < Formula
  desc "CDM tool: better-clone"
  homepage "https://github.com/cdm-ch"
  version "1.2.0"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/better-clone/1.2.0/better-clone-1.2.0-darwin-intel.tar.gz"
      sha256 "5001171a42251684479ce432eaa20cf045621ba421235cc3c32218e99fba28f8"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/better-clone/1.2.0/better-clone-1.2.0-darwin-arm.tar.gz"
      sha256 "3b82e1a5255e366b02924ad42e09e166b284d1ba4ee85315d30455928dfc37fe"
    end
  end

  def install
    bin.install "better-clone"
  end

  test do
    system "#{bin}/better-clone", "--version"
  end
end
