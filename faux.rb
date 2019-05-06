class Faux < Formula
  desc "Golang fake generator"
  homepage "https://github.com/ryanmoran/faux"
  version "v0.10.0"

  if OS.mac?
    url "https://github.com/ryanmoran/faux/releases/download/#{version}/faux-darwin-amd64"
    sha256 "88d8e9e0c4b605a3d604648a31ac107a2c34e7e96ea059e11f6075683309e238"
  elsif OS.linux?
    url "https://github.com/ryanmoran/faux/releases/download/#{version}/faux-linux-amd64"
    sha256 "8baaf21db7d173f671be3496e1fca11c10e1e91398738b2ecd0e8d8843578c66"
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
