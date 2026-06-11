class BetterClone < Formula
  desc "CDM tool: better-clone"
  homepage "https://github.com/cdm-ch"
  version "2.4.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/better-clone/2.4.0/better-clone-2.4.0-darwin-intel.tar.gz"
      sha256 "4ee33d507608c5a50d78febb9b78caaee972368ba2f8113a2cf82fac4762ad37"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/better-clone/2.4.0/better-clone-2.4.0-darwin-arm.tar.gz"
      sha256 "cf056b9e0d81751e0369b465cde3dd2ce05049177f6098760c97fbc84f3c68d6"
    end
  end

  def install
    bin.install "better-clone"
  end

  test do
    system "#{bin}/better-clone", "--version"
  end
end
