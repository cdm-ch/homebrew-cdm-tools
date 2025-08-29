class ReleaseHelper < Formula
  desc "CDM tool: release-helper"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.0.2"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/release-helper/1.0.2/release-helper-1.0.2-darwin-intel.tar.gz"
      sha256 "960491c2964d066e671ee101d7a7ee4fc1a79b81dfc0135395c3cd83a98fe3c4"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/release-helper/1.0.2/release-helper-1.0.2-darwin-arm.tar.gz"
      sha256 "1f41d0177e5fbbe4b1bc86b34d88bb0331de27d0dba4ad0beb21e8b332f17ba1"
    end
  end

  def install
    bin.install "release-helper"
  end

  test do
    system "#{bin}/release-helper", "--version"
  end
end
