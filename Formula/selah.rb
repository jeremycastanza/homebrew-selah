class Selah < Formula
  desc "A terminal Bible reader"
  homepage "https://github.com/jeremycastanza/selah"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
    url "https://api.github.com/repos/jeremycastanza/homebrew-selah-tap/releases/assets/411201451", headers: ["Authorization: token #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}", "Accept: application/octet-stream"]
    sha256 "d89449a806ef2f404e2b8fce7309325d7c6c52cb617d9bf3cc376b6d4d175277"
    end
  end

  on_linux do
    on_arm do
    url "https://api.github.com/repos/jeremycastanza/homebrew-selah-tap/releases/assets/411201452", headers: ["Authorization: token #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}", "Accept: application/octet-stream"]
    sha256 "742ead58bb407a0be4b102d2f388949e4f918b6024af7e9afd4c90bbde069847"
    end
  end

  def install
    bin.install "selah"
  end
end
