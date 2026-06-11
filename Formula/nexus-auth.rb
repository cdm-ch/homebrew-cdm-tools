class NexusAuth < Formula
  desc "CDM tool: nexus-auth"
  homepage "https://github.com/cdm-ch"
  version "1.3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/nexus-auth/1.3.0/nexus-auth-1.3.0-darwin-intel.tar.gz"
      sha256 "6ad4a1919a0a690ce99e7129c2297075d13532c5a53d6c2219f0e0adba6a5cc8"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/nexus-auth/1.3.0/nexus-auth-1.3.0-darwin-arm.tar.gz"
      sha256 "f2b41e626b6094a18b0e68d1ca1ffd887ac37b75ed12ff0f37a030eaee9207fe"
    end
  end

  def install
    bin.install "nexus-auth"
  end

  test do
    system "#{bin}/nexus-auth", "--version"
  end
end
