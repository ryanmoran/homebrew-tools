class Faux < Formula
  desc "Golang fake generator"
  homepage "https://github.com/ryanmoran/faux"
  version "v0.22.4"

  on_macos do
    on_intel do
      url "https://github.com/ryanmoran/faux/releases/download/#{version}/faux-darwin-amd64"
      sha256 "d035f1d7a12093ef78d17d83c4fa52f654dbeb35227c73bdff6167472aadc8ec"
    end
    on_arm do
      url "https://github.com/ryanmoran/faux/releases/download/#{version}/faux-darwin-arm64"
      sha256 "17e09e670e6a478ecba5949f66d7a44792bf441065983dc09b309a827321b47c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ryanmoran/faux/releases/download/#{version}/faux-linux-amd64"
      sha256 "e716c051ae604372fb72320124295a7ce5bab5d9d6b439373179252170054916"
    end
    on_arm do
      url "https://github.com/ryanmoran/faux/releases/download/#{version}/faux-linux-arm64"
      sha256 "4f8690900f450aff3647fc0b0ce84685fd7585faef6676111faf9cdeec99be5c"
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
