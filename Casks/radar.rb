cask "radar" do
  version "0.15"
  sha256 "7ba9d702313d68e3466af5ca20956090538a736de1817d8b14af21ea72659778"

  url "https://storage.googleapis.com/radar-builds/Radar-#{version}.tar.gz"
  name "Radar"
  homepage "https://github.com/ryanmoran/Radar/"

  app "Radar.app"
end
