# Homebrew Formula for bb-pr-master v1.0.0

class BbPrMaster < Formula
  desc "Bitbucket Pull Request CLI tool for batch operations across repositories"
  homepage "https://git.cdm.smis.ch/bitbucket/scm/ccpt/ccp-go-tools"
  version "1.0.0"
  
  # Anonymous read access enabled in Nexus
  url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-pr-master/1.0.0/bb-pr-master-1.0.0-darwin-arm64.tar.gz"
  
  sha256 "d720681f01c5ccffa5a83643afaae5804b9be375f30e954eeacfd889c2242d05"
  
  depends_on arch: :arm64
  
  def install
    bin.install "bb-pr-master"
  end
  
  test do
    assert_match "bb-pr-master", shell_output("#{bin}/bb-pr-master --help 2>&1")
  end
end
