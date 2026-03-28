class Adc < Formula
  desc "Atlassian Data Center CLI for Jira and Bitbucket"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CCPT"
  version "1.5.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.5.3/adc-1.5.3-darwin-intel.tar.gz"
      sha256 "8911df6b59660be5cb307ed62513bc3e10cbfb9cfebcd044c3c032335a085f37"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/adc/1.5.3/adc-1.5.3-darwin-arm.tar.gz"
      sha256 "9145d0bd669416763b463d4822d28e2e1baaf862fef67eb7894010eb4693eafe"
    end
  end

  def install
    bin.install "adc"
  end

  test do
    system "#{bin}/adc", "--version"
  end
end
