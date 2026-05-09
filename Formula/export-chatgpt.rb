class ExportChatgpt < Formula
  desc "Bulk export ChatGPT conversations (CDM-audited single binary)"
  homepage "https://git.cdm.smis.ch/bitbucket/projects/CDMIT/repos/export-chatgpt"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/export-chatgpt/0.2.0/export-chatgpt-0.2.0-darwin-intel.tar.gz"
      sha256 "436089f6a409aa499fde8b140c11c00105f9f1258474a74fc1219cf0abfb4f9c"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/export-chatgpt/0.2.0/export-chatgpt-0.2.0-darwin-arm.tar.gz"
      sha256 "6daa8049a0ecf45d23bf3c0c78cf1bff6708e8247bae0af052eb6599f5084c29"
    end
  end

  on_linux do
    url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/export-chatgpt/0.2.0/export-chatgpt-0.2.0-linux-amd64.tar.gz"
    sha256 "d53e0a4eb46772afb73f39f1c847834f281520259fb593809d9464fc29da189d"
  end

  def install
    bin.install "export-chatgpt"
  end

  test do
    system "#{bin}/export-chatgpt", "--version"
  end
end
