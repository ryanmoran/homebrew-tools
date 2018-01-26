cask "radar" do
  version "0.2"
  sha256 "5ea39115073b07befd8ad857058212bacfc4295522f864e620b2d6c607335fd6"

  url "https://storage.googleapis.com/radar-builds/Radar-#{version}.tar.gz"
  name "Radar"
  homepage "https://github.com/ryanmoran/radar/"

  app "Radar.app"
end
