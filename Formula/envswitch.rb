class Envswitch < Formula
  desc "Native dev-environment version manager — instant symlink switching for JDK, Go, Node, PHP, Python, MySQL, PostgreSQL"
  homepage "https://github.com/dacj4n/envSwitch"
  license "MIT"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/dacj4n/envSwitch/releases/download/v#{version}/envswitch-macos-arm64.tar.gz"
      sha256 "add87094e79b86bd696426682e34aeca48feda803d0aaf1f467f210b2c23525a"
    end
  end

  def install
    bin.install "envswitch"
  end

  def caveats
    <<~EOS
      Add envSwitch shell integration:
        envswitch init zsh && source ~/.zshrc
    EOS
  end

  test do
    system "#{bin}/envswitch", "--version"
  end
end
