class Envswitch < Formula
  desc "Native dev-environment version manager — instant symlink switching for JDK, Go, Node, PHP, Python, MySQL, PostgreSQL"
  homepage "https://github.com/dacj4n/envSwitch"
  license "MIT"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/dacj4n/envSwitch/releases/download/v#{version}/envswitch-macos-arm64.tar.gz"
      sha256 "368913ef85e8959d55f166e4c971efc92a7aba98b57c88931645e496110e99de"
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
