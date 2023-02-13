class Faux < Formula
  desc "Golang fake generator"
  homepage "https://github.com/ryanmoran/faux"
  version "v0.22.2"

  if OS.mac?
    url "https://github.com/ryanmoran/faux/releases/download/#{version}/faux-darwin-amd64"
    sha256 "c3891606bd0e611fb712e012d9806bb34a49aa763efa0d5927ae3800635de37d"
  elsif OS.linux?
    url "https://github.com/ryanmoran/faux/releases/download/#{version}/faux-linux-amd64"
    sha256 "7d86f76d637e3db63eebfdef5250aa58f056cece8b1c2a958339fc6f8d0519b6"
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
