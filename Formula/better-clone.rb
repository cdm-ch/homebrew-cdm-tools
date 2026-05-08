class BetterClone < Formula
  desc "CDM tool: better-clone"
  homepage "https://github.com/cdm-ch"
  version "1.2.2"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/better-clone/1.2.2/better-clone-1.2.2-darwin-intel.tar.gz"
      sha256 "950cd39818b7ef171daf1238b70fbadce92caa92834a6911bfb02a8ea48b5494"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/better-clone/1.2.2/better-clone-1.2.2-darwin-arm.tar.gz"
      sha256 "9d62df2c3040fa22d26e4b05c3b6c10af0a779149c4135f8c22c72b9dc13f16d"
    end
  end

  def install
    bin.install "better-clone"
  end

  test do
    system "#{bin}/better-clone", "--version"
  end
end
