class SmbGitSync < Formula
  desc "CDM tool: smb-git-sync"
  homepage "https://github.com/cdm-ch"
  version "1.3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/smb-git-sync/1.3.0/smb-git-sync-1.3.0-darwin-intel.tar.gz"
      sha256 "12b8393efe63b4c3e2b2fff46acf7577d8b551746ac0b266f77dff65a1250e54"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/smb-git-sync/1.3.0/smb-git-sync-1.3.0-darwin-arm.tar.gz"
      sha256 "6347071ea8c588ce83d160ad4cd133af7e6d2ac684cc802a698b06124f5fa78f"
    end
  end

  def install
    bin.install "smb-git-sync"
  end

  test do
    system "#{bin}/smb-git-sync", "--version"
  end
end
