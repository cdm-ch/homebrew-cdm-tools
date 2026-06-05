class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://github.com/cdm-ch"
  version "1.18.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.18.0/adc-1.18.0-darwin-intel.tar.gz"
      sha256 "7212ea1f4a3699bb61bbe57558dd106c7d5497903c545400150e0fcd6277a6dd"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.18.0/adc-1.18.0-darwin-arm.tar.gz"
      sha256 "686e85fed27135d9ce6630f8e21cd1457bc62ea6d092c4fe3d68498fb443ebbf"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end
