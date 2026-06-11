class NexusAuth < Formula
  desc "CDM tool: nexus-auth"
  homepage "https://github.com/cdm-ch"
  version "1.4.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/nexus-auth/1.4.0/nexus-auth-1.4.0-darwin-intel.tar.gz"
      sha256 "4e42a4a82c56d48d26c46e3d662adb139dd108320d734c17f0dc676e3877400f"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/nexus-auth/1.4.0/nexus-auth-1.4.0-darwin-arm.tar.gz"
      sha256 "62ea41bc240fd5f5200d56f7512442501a283c75d929b17c244e4423e2164cd6"
    end
  end

  def install
    bin.install "nexus-auth"
  end

  test do
    system "#{bin}/nexus-auth", "--version"
  end
end
