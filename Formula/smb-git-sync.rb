class SmbGitSync < Formula
  desc "CDM tool: smb-git-sync"
  homepage "https://github.com/cdm-ch"
  version "1.4.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/smb-git-sync/1.4.0/smb-git-sync-1.4.0-darwin-intel.tar.gz"
      sha256 "5b28515f6aea50bb271d049a9cd21340c67e387f4f3241920f4b51cccbadcdd5"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/smb-git-sync/1.4.0/smb-git-sync-1.4.0-darwin-arm.tar.gz"
      sha256 "28a5dae487e042c9254e1a654b00b2b92af61bab487b084e250f0e1cf87a0977"
    end
  end

  def install
    bin.install "smb-git-sync"
  end

  test do
    system "#{bin}/smb-git-sync", "--version"
  end
end
