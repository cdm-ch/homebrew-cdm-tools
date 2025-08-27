# Homebrew Formula for better-clone v1.0.0

class BetterClone < Formula
  desc "Concurrent Bitbucket repository cloner with interactive project selection"
  homepage "https://git.cdm.smis.ch/bitbucket/scm/ccpt/convenience-scripts"
  version "1.0.0"
  
  # Anonymous read access enabled in Nexus
  url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/better-clone/1.0.0/better-clone-1.0.0-darwin-arm64.tar.gz"
  
  sha256 "9a6489d2b71c06a915e0e46c8c9c3f24eda745022a7093b962f8b553869ec758"
  
  depends_on arch: :arm64
  
  def install
    bin.install "better-clone"
  end
  
  test do
    assert_match "better-clone", shell_output("#{bin}/better-clone --help 2>&1")
  end
end
