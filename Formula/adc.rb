class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.3.9"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.3.9/adc-1.3.9-darwin-intel.tar.gz"
      sha256 "9e3e9273203cfa00064da4974a7babe4edc0bc3c8b8fdf5917f390f8811216df"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.3.9/adc-1.3.9-darwin-arm.tar.gz"
      sha256 "86b4334da61e8430b56d5781911215a10d72ff1b6fa37e7dc0023f996d89eaeb"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end
