class Selah < Formula
  desc "A terminal Bible reader"
  homepage "https://github.com/jeremycastanza/selah"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
    url "https://api.github.com/repos/jeremycastanza/homebrew-selah-tap/releases/assets/410876069", headers: ["Authorization: token #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}", "Accept: application/octet-stream"]
    sha256 "5398065a0890bc10dc73d9d7b52687bd23c7075adf07c6ebe991a383b7654aff"
    end
  end

  on_linux do
    on_arm do
    url "https://api.github.com/repos/jeremycastanza/homebrew-selah-tap/releases/assets/410876068", headers: ["Authorization: token #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}", "Accept: application/octet-stream"]
    sha256 "c8acdca85e5f9868b48533390b0bdc1566eb61e1a18d527499205b10fbc98b66"
    end
  end

  def install
    bin.install "selah"
  end
end
