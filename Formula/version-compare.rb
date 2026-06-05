class VersionCompare < Formula
  desc "CDM tool: version-compare"
  homepage "https://github.com/cdm-ch"
  version "1.4.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/version-compare/1.4.0/version-compare-1.4.0-darwin-intel.tar.gz"
      sha256 "c4409c55c6c130d69696de3fb3aaa179a82bf936f5488e5c9a3c6354ced6af41"
    else
      url "https://nexus.cdm.smis.ch/repository/homebrew-binaries/version-compare/1.4.0/version-compare-1.4.0-darwin-arm.tar.gz"
      sha256 "690fc6db8ec522749f9beb45f81009828a4db62d8c5b9c544eede986c0fedb1f"
    end
  end

  def install
    bin.install "version-compare"
  end

  test do
    system "#{bin}/version-compare", "--version"
  end
end
