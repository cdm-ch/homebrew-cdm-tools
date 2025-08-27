# Homebrew Formula for better-clone v1.0.1

class BetterClone < Formula
  desc "Concurrent Bitbucket repository cloner with interactive project selection"
  homepage "https://git.cdm.smis.ch/bitbucket/scm/ccpt/convenience-scripts"
  version "1.0.1"
  
  # Anonymous read access enabled in Nexus
  url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/better-clone/1.0.1/better-clone-1.0.1-darwin-arm64.tar.gz"
  
  sha256 "6fdf35c99118a4b4c0c11b546f3127ae0c12779e73cd7abf2198952c67c30ab2"
  
  depends_on arch: :arm64
  
  def install
    bin.install "better-clone"
  end
  
  test do
    assert_match "better-clone", shell_output("#{bin}/better-clone --help 2>&1")
  end
end
