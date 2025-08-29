class ub_pr_master < Formula
  desc "CDM tool: bb-pr-master"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.0.1"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-pr-master/1.0.1/bb-pr-master-1.0.1-darwin-intel.tar.gz"
      sha256 ""
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-pr-master/1.0.1/bb-pr-master-1.0.1-darwin-arm.tar.gz"
      sha256 ""
    end
  end

  def install
    bin.install "bb-pr-master"
  end

  test do
    system "#{bin}/bb-pr-master", "--version"
  end
end
