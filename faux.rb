class Faux < Formula
  desc "Golang fake generator"
  homepage "https://github.com/ryanmoran/faux"
  version "v0.19.1"

  if OS.mac?
    url "https://github.com/ryanmoran/faux/releases/download/#{version}/faux-darwin-amd64"
    sha256 "b4d13658da4d2d2d780c683b5f2d48e209d864ec7f52fd48055a4a3223c82bdd"
  elsif OS.linux?
    url "https://github.com/ryanmoran/faux/releases/download/#{version}/faux-linux-amd64"
    sha256 "e1794ffefa65a5e2cbbc31e2cc5ca24bf8b45f70f021df205d4a805d67deb72e"
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
