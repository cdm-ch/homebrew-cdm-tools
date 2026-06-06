class SmbGitSync < Formula
  desc "CDM tool: smb-git-sync"
  homepage "https://github.com/cdm-ch"
  version "1.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/smb-git-sync/1.2.0/smb-git-sync-1.2.0-darwin-intel.tar.gz"
      sha256 "3df1b8e5ea9e7f7f717efb6637a8e25057a73de9adffc31c1ee69f4291752bcf"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/smb-git-sync/1.2.0/smb-git-sync-1.2.0-darwin-arm.tar.gz"
      sha256 "86e1dda67a38b94734fedcd169460e118c9a9f508a5fc78d3194fb39a358cc49"
    end
  end

  def install
    bin.install "smb-git-sync"
  end

  test do
    system "#{bin}/smb-git-sync", "--version"
  end
end
