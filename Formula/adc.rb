class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://github.com/cdm-ch"
  version "1.11.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.11.4/adc-1.11.4-darwin-intel.tar.gz"
      sha256 "8dd3e61638cdf55135cd235bedfee3d1b5697f009f06b940e9ad688ce4136396"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.11.4/adc-1.11.4-darwin-arm.tar.gz"
      sha256 "2893847feade1d165fb4f37e482f4470fe92807f8c973200241eccc0a31378a5"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end
