class Faux < Formula
  desc "Golang fake generator"
  homepage "https://github.com/ryanmoran/faux"
  version "v0.23.1"

  on_macos do
    on_intel do
      url "https://github.com/ryanmoran/faux/releases/download/#{version}/faux-darwin-amd64"
      sha256 "69014970d01e228f9c67ddc078fb1937db41252d9b10816c667da85637335012"
    end
    on_arm do
      url "https://github.com/ryanmoran/faux/releases/download/#{version}/faux-darwin-arm64"
      sha256 "5d104d07111af49fcebb78b77d217de3c12672eda149e749f914347ee13cc343"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ryanmoran/faux/releases/download/#{version}/faux-linux-amd64"
      sha256 "5b18a2a9f1ffdc7e5a18809f99a1aef23dbfcbc13e42e79dcda557caf4d1bfe2"
    end
    on_arm do
      url "https://github.com/ryanmoran/faux/releases/download/#{version}/faux-linux-arm64"
      sha256 "c0b16eb67b927d692e2614e1291b22e0a64c57d4253fbbd8ab4cae2f97a232fd"
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
