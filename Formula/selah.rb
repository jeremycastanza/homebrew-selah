class Selah < Formula
  desc "A terminal Bible reader"
  homepage "https://github.com/jeremycastanza/selah"
  version "1.0.0"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/jeremycastanza/selah/releases/download/v1.0.0/selah-aarch64-apple-darwin.tar.xz"
      sha256 "5aaaa69bc5a984b8d034dfb5171d7342d23b10e56a0c332851a97f3487ebda1a"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/jeremycastanza/selah/releases/download/v1.0.0/selah-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "6ad555a1109d8e7b7de24fdeaa930b8ea1d8cb8c4ca5aec2b2ff169ed964be12"
    end
  end
  license "GPL-3.0-only"

  BINARY_ALIASES = {
    "aarch64-apple-darwin": {},
    "aarch64-unknown-linux-gnu": {}
  }

  def target_triple
    cpu = Hardware::CPU.arm? ? "aarch64" : "x86_64"
    os = OS.mac? ? "apple-darwin" : "unknown-linux-gnu"

    "#{cpu}-#{os}"
  end

  def install_binary_aliases!
    BINARY_ALIASES[target_triple.to_sym].each do |source, dests|
      dests.each do |dest|
        bin.install_symlink bin/source.to_s => dest
      end
    end
  end

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "selah"
    end
    if OS.linux? && Hardware::CPU.arm?
      bin.install "selah"
    end

    install_binary_aliases!

    # Homebrew will automatically install these, so we don't need to do that
    doc_files = Dir["README.*", "readme.*", "LICENSE", "LICENSE.*", "CHANGELOG.*"]
    leftover_contents = Dir["*"] - doc_files

    # Install any leftover files in pkgshare; these are probably config or
    # sample files.
    pkgshare.install(*leftover_contents) unless leftover_contents.empty?
  end
end
