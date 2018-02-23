cask "radar" do
  version "0.9"
  sha256 "ca220c64e968eb36d36bcd400a258acc99b965eaf2e1637df962cdc0c45de65d"

  url "https://storage.googleapis.com/radar-builds/Radar-#{version}.tar.gz"
  name "Radar"
  homepage "https://github.com/ryanmoran/radar/"

  app "Radar.app"
end
