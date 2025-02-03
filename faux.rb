class Faux < Formula
  desc "Golang fake generator"
  homepage "https://github.com/ryanmoran/faux"
  version "v0.24.0"

  on_macos do
    on_intel do
      url "https://github.com/ryanmoran/faux/releases/download/#{version}/faux-darwin-amd64"
      sha256 "41610a2b3584a0702ef8fd6e439c17e22086da29ffa31445ac2e368be6df050d"
    end
    on_arm do
      url "https://github.com/ryanmoran/faux/releases/download/#{version}/faux-darwin-arm64"
      sha256 "d19d459bf9298712095f70c9996e6ceaa2f47df96bc71d7374f373055ae0dc74"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ryanmoran/faux/releases/download/#{version}/faux-linux-amd64"
      sha256 "67b7f8a3bebdae1608e8c8118b2bd7f1cf305bf65e962c88b0d4f689c2f4571b"
    end
    on_arm do
      url "https://github.com/ryanmoran/faux/releases/download/#{version}/faux-linux-arm64"
      sha256 "47abb341772042244222f00c009de15fbba81a8d66470bab8c7c82452a4dfa34"
    end
  end

  def install
    binary_name = "faux"
    case
    when OS.mac? && Hardware::CPU.intel?
      bin.install "faux-darwin-amd64" => binary_name
    when OS.mac? && Hardware::CPU.arm?
      bin.install "faux-darwin-arm64" => binary_name
    when OS.linux? && Hardware::CPU.intel?
      bin.install "faux-linux-amd64" => binary_name
    when OS.linux? && Hardware::CPU.arm?
      bin.install "faux-linux-arm64" => binary_name
    end
  end

  test do
    system "#{bin}/#{binary_name} --help"
  end
end
