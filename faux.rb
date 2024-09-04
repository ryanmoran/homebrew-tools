class Faux < Formula
  desc "Golang fake generator"
  homepage "https://github.com/ryanmoran/faux"
  version "v0.23.0"

  on_macos do
    on_intel do
      url "https://github.com/ryanmoran/faux/releases/download/#{version}/faux-darwin-amd64"
      sha256 "825462fca58d0dfea4defdbfa85e248d18b059afd849e0ac2c8c73ff2bb05e59"
    end
    on_arm do
      url "https://github.com/ryanmoran/faux/releases/download/#{version}/faux-darwin-arm64"
      sha256 "95f64ad49d11980b26fc20ca51d6270585f93a921cb8eedcbd019a92392fbc3e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ryanmoran/faux/releases/download/#{version}/faux-linux-amd64"
      sha256 "363576e3954dfac37234a74f306fe98181c2f0717e094396f82a39430640c1f1"
    end
    on_arm do
      url "https://github.com/ryanmoran/faux/releases/download/#{version}/faux-linux-arm64"
      sha256 "ec54eb03ecfe598a1e12306d1c1d0664ded3032f81e893d0a990dbc04d9c0ce5"
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
