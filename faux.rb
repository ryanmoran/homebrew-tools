class Faux < Formula
  desc "Golang fake generator"
  homepage "https://github.com/ryanmoran/faux"
  version "v0.14.0"

  if OS.mac?
    url "https://github.com/ryanmoran/faux/releases/download/#{version}/faux-darwin-amd64"
    sha256 "fe23801dc6e6187300607ef06f2e2fb8e4689174f7cb73017fced180498f1e3b"
  elsif OS.linux?
    url "https://github.com/ryanmoran/faux/releases/download/#{version}/faux-linux-amd64"
    sha256 "0e663a63769d50f180b84801bfad027baaa000c83410f63c6ead974b019a97af"
  end

  depends_on :arch => :x86_64

  def install
    binary_name = "faux"
    if OS.mac?
      bin.install "faux-darwin-amd64" => binary_name
    elsif OS.linux?
      bin.install "faux-linux-amd64" => binary_name
    end
  end

  test do
    system "#{bin}/#{binary_name} --help"
  end
end
