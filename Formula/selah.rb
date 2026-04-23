class Selah < Formula
  desc "A terminal Bible reader"
  homepage "https://github.com/jeremycastanza/selah"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
    url "https://api.github.com/repos/jeremycastanza/homebrew-selah-tap/releases/assets/403804899", headers: ["Authorization: token #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}", "Accept: application/octet-stream"]
    sha256 "f63d1b29f6831063002cc245b6810cfbf6264d1a9da6327742edb0417e705370"
    end
  end

  on_linux do
    on_arm do
    url "https://api.github.com/repos/jeremycastanza/homebrew-selah-tap/releases/assets/403804903", headers: ["Authorization: token #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}", "Accept: application/octet-stream"]
    sha256 "e6e3e7a4b19db9e4088270d07c0fba7c5250fe6f358f43e9abfbcde0f4a4d512"
    end
  end

  def install
    bin.install "selah"
  end
end
