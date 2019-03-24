class Faux < Formula
  desc "Golang fake generator"
  homepage "https://github.com/ryanmoran/faux"
  version "v0.4.0"

  if OS.mac?
    url "https://github.com/ryanmoran/faux/releases/download/#{version}/faux-darwin-amd64"
    sha256 "2122e25ef667a8dffade49b955c4e2f68b43b400c622d10752996cd175cb7323"
  elsif OS.linux?
    url "https://github.com/ryanmoran/faux/releases/download/#{version}/faux-linux-amd64"
    sha256 "e73ce9c03c3809cd6ea4c2ff525e0c2ab0085f41b3ce496f1dc060ea396e3571"
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
