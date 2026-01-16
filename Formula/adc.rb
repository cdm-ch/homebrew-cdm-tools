class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.4.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.4.0/adc-1.4.0-darwin-intel.tar.gz"
      sha256 "a3ccdb92d150c20e08f8be140a122f14890fe60090251fc2ea6bb6b28b05aa15"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.4.0/adc-1.4.0-darwin-arm.tar.gz"
      sha256 "931f95246679f9bf497494bc88e3450069d458861f1a46b98b253d328451bb8c"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end
