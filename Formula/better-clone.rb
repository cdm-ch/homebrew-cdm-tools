class BetterClone < Formula
  desc "CDM tool: better-clone"
  homepage "https://github.com/cdm-ch"
  version "2.5.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/better-clone/2.5.0/better-clone-2.5.0-darwin-intel.tar.gz"
      sha256 "561e10e604e9f0a56cd6efddc6988e670cab5f5774ac306a25f6b66973a27f7f"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/better-clone/2.5.0/better-clone-2.5.0-darwin-arm.tar.gz"
      sha256 "e38a89edeb742001314aea75e5decd9a6022716269601e9417ec95ef59cb2c04"
    end
  end

  def install
    bin.install "better-clone"
  end

  test do
    system "#{bin}/better-clone", "--version"
  end
end
