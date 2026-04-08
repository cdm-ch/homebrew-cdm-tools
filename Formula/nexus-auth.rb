class NexusAuth < Formula
  desc "CDM tool: nexus-auth"
  homepage "https://github.com/cdm-ch"
  version "1.0.5"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/nexus-auth/1.0.5/nexus-auth-1.0.5-darwin-intel.tar.gz"
      sha256 "461ace78ebb9428abb682695b56ff36f2bc5539f21b13d888c2658fdd48fbf3a"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/nexus-auth/1.0.5/nexus-auth-1.0.5-darwin-arm.tar.gz"
      sha256 "0e7a51a342d68677660e4d496a9f832bbc9be496e2abb8704bf3f10935f8d8e2"
    end
  end

  def install
    bin.install "nexus-auth"
  end

  test do
    system "#{bin}/nexus-auth", "--version"
  end
end
