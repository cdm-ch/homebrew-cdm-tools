class ReleaseHelper < Formula
  desc "CDM tool: release-helper"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.0.4"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/release-helper/1.0.4/release-helper-1.0.4-darwin-intel.tar.gz"
      sha256 "0888c4faa257e707a4affaa97dd0b1bf868c3c0d1c3f2799ad65def806082273"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/release-helper/1.0.4/release-helper-1.0.4-darwin-arm.tar.gz"
      sha256 "d5787787ef80da9373f673f01949d680cfc04d5dfc61dc4eb8b58fb6d42d84eb"
    end
  end

  def install
    bin.install "release-helper"
  end

  test do
    system "#{bin}/release-helper", "--version"
  end
end
