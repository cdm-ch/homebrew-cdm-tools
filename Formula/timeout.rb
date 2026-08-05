class Timeout < Formula
  desc "CDM tool: timeout"
  homepage "https://github.com/cdm-ch"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/timeout/0.1.1/timeout-0.1.1-darwin-intel.tar.gz"
      sha256 "96a935fedc13fe0fb24aa400ea9e310695ff1a18c751aa6f4c82f4880b39c0d7"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/timeout/0.1.1/timeout-0.1.1-darwin-arm.tar.gz"
      sha256 "8848eae6927e776f5a2f633f283aa3e89c9683f94eb7c3774f4c58f0e0db8816"
    end
  end

  def install
    bin.install "timeout"
  end

  test do
    system "#{bin}/timeout", "--version"
  end
end
