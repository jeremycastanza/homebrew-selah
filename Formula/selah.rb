class Selah < Formula
  desc "A terminal Bible reader"
  homepage "https://github.com/jeremycastanza/selah"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
    url "https://api.github.com/repos/jeremycastanza/homebrew-selah-tap/releases/assets/410868594", headers: ["Authorization: token #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}", "Accept: application/octet-stream"]
    sha256 "c11b41aa7609c0a34c24045c73351e6ed5369946c5c1393d5e0def093f9a1e41"
    end
  end

  on_linux do
    on_arm do
    url "https://api.github.com/repos/jeremycastanza/homebrew-selah-tap/releases/assets/410868590", headers: ["Authorization: token #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}", "Accept: application/octet-stream"]
    sha256 "cb79047ffa9e9e37c19d8094438a815c26707a37437830029bcaa2ff244eeced"
    end
  end

  def install
    bin.install "selah"
  end
end
