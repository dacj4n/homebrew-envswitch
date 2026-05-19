class Envswitch < Formula
  desc "Native dev-environment version manager — instant symlink switching for JDK, Go, Node, PHP, Python, MySQL, PostgreSQL"
  homepage "https://github.com/dacj4n/envSwitch"
  license "MIT"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/dacj4n/envSwitch/releases/download/v#{version}/envswitch-macos-arm64.tar.gz"
      sha256 "e539b58ad4b9941d63babdcc980613a4851c90b3cdb1364603d4eeba9efe2a59"
    end
  end

  def install
    bin.install "envswitch"
  end

  def caveats
    <<~EOS
      Add envSwitch shell integration:
        envswitch init zsh && source ~/.envswitch/init.sh
    EOS
  end

  test do
    system "#{bin}/envswitch", "--version"
  end
end
