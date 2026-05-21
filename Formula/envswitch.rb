class Envswitch < Formula
  desc "Native dev-environment version manager — instant symlink switching for JDK, Go, Node, PHP, Python, MySQL, PostgreSQL"
  homepage "https://github.com/dacj4n/envSwitch"
  license "MIT"
  version "0.2.2"

  on_macos do
    on_arm do
      url "https://github.com/dacj4n/envSwitch/releases/download/v#{version}/envswitch-macos-arm64.tar.gz"
      sha256 "5010f159adab97c9cbea8f7d5681e56748323bdd7b5ef818003a85cd1664201d"
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
