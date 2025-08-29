class BbPrMaster < Formula
  desc "CDM tool: bb-pr-master"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.0.9"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-pr-master/1.0.9/bb-pr-master-1.0.9-darwin-intel.tar.gz"
      sha256 "f42a1dd2b956d41263a4c17c5548d0f7fbac93eb8408de9724e98fd1141b8c52"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/bb-pr-master/1.0.9/bb-pr-master-1.0.9-darwin-arm.tar.gz"
      sha256 "fb7d373181e32b6c2b96171c413ac239957b03c9ac2fbfa473f75871684fb963"
    end
  end

  def install
    bin.install "bb-pr-master"
  end

  test do
    system "#{bin}/bb-pr-master", "--version"
  end
end
