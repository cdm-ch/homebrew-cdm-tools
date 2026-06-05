class BetterClone < Formula
  desc "CDM tool: better-clone"
  homepage "https://github.com/cdm-ch"
  version "2.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/better-clone/2.2.0/better-clone-2.2.0-darwin-intel.tar.gz"
      sha256 "ecbd27d297378430cb50499e3b948ee7ee18b83f28d56dbb1d4f2d2877882a0a"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/better-clone/2.2.0/better-clone-2.2.0-darwin-arm.tar.gz"
      sha256 "6f2806ad234887739f25b754e50272901928e1befcefe3722f2e7721cb8ace14"
    end
  end

  def install
    bin.install "better-clone"
  end

  test do
    system "#{bin}/better-clone", "--version"
  end
end
