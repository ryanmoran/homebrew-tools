cask "radar" do
  version "0.12"
  sha256 "f6d85bd9b866692171d20ea0ee426ba742da71b7f1ddeea43dd0cf3bc8706bda"

  url "https://storage.googleapis.com/radar-builds/Radar-#{version}.tar.gz"
  name "Radar"
  homepage "https://github.com/ryanmoran/radar/"

  app "Radar.app"
end
