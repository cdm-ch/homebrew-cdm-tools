class SmbGitSync < Formula
  desc "CDM tool: smb-git-sync"
  homepage "https://github.com/cdm-ch"
  version "1.5.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/smb-git-sync/1.5.0/smb-git-sync-1.5.0-darwin-intel.tar.gz"
      sha256 "aeccee0428b1762e3d1286e67c79cae15690434acbed0e59b029edf317597195"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/smb-git-sync/1.5.0/smb-git-sync-1.5.0-darwin-arm.tar.gz"
      sha256 "dcec8d18205d558f9f7ed1b7bed64b2791ad012f011636100169d96510860388"
    end
  end

  def install
    bin.install "smb-git-sync"
  end

  test do
    system "#{bin}/smb-git-sync", "--version"
  end
end
