class Selah < Formula
  desc "A terminal Bible reader"
  homepage "https://github.com/jeremycastanza/selah"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
    url "https://api.github.com/repos/jeremycastanza/homebrew-selah-tap/releases/assets/391224868", headers: ["Authorization: token #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}", "Accept: application/octet-stream"]
    sha256 "de603f620896addd9a564fcb804f6876b5a593756d1ed37217968c11c0be2aab"
    end
  end

  on_linux do
    on_arm do
    url "https://api.github.com/repos/jeremycastanza/homebrew-selah-tap/releases/assets/391224869", headers: ["Authorization: token #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}", "Accept: application/octet-stream"]
    sha256 "b81fb64337d2c73ef3737e58054770bb9b218abe6da85b69a46e956877128c24"
    end
  end

  def install
    bin.install "selah"
  end
end
