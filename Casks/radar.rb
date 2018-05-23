cask "radar" do
  version "0.18"
  sha256 "334783fc50a095db05152650c79b67edbe0d92a2cad2047fe329eef17942568d"

  url "https://storage.googleapis.com/radar-builds/Radar-#{version}.tar.gz"
  name "Radar"
  homepage "https://github.com/ryanmoran/Radar/"

  app "Radar.app"
end
