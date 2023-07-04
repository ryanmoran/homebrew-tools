class Faux < Formula
  desc "Golang fake generator"
  homepage "https://github.com/ryanmoran/faux"
  version "v0.22.3"

  on_macos do
    on_intel do
      url "https://github.com/ryanmoran/faux/releases/download/#{version}/faux-darwin-amd64"
      sha256 "4814e6337300002c295e0018c64c040b82721e162ac6cf236e18928878c1a22f"
    end
    on_arm do
      url "https://github.com/ryanmoran/faux/releases/download/#{version}/faux-darwin-arm64"
      sha256 "cf4ec47bbb531d81dd4ceb544a8fc3cead147550a0a75df5297939d3b0b57b16"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ryanmoran/faux/releases/download/#{version}/faux-linux-amd64"
      sha256 "d87e941d57d2556def763e5097b73d41512f3fd0b9497e6f807c9a9aa4075f91"
    end
    on_arm do
      url "https://github.com/ryanmoran/faux/releases/download/#{version}/faux-linux-arm64"
      sha256 "a5cd8167ec071ad81ccb0e8538d935bdb98fa8d2a8eeb88d4603194ab51e894b"
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
