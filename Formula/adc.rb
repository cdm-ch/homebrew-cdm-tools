class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://github.com/cdm-ch"
  version "1.15.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.15.2/adc-1.15.2-darwin-intel.tar.gz"
      sha256 "64f4bcd4e1fd7ce4d51087bed3d9cb36592fe69e11e58805a552d41ea5bb2e6c"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.15.2/adc-1.15.2-darwin-arm.tar.gz"
      sha256 "aa6e5fb5ff3847f59fa3192fe25c083c7cf960a0841b1d8577638a8eeb66c3ba"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end
