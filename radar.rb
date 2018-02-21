cask "radar" do
  version "0.8"
  sha256 "3d883906f336efc0f87174ad5dae6b002b5b9f53209d0517df59488e694fce4b"

  url "https://storage.googleapis.com/radar-builds/Radar-#{version}.tar.gz"
  name "Radar"
  homepage "https://github.com/ryanmoran/radar/"

  app "Radar.app"
end
