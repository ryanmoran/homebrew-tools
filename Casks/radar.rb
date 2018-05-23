cask "radar" do
  version "0.19"
  sha256 "09667477ff2234941007f68c8e387db8ad3fa1bf277db8b290fc48c26c618d7b"

  url "https://storage.googleapis.com/radar-builds/Radar-#{version}.tar.gz"
  name "Radar"
  homepage "https://github.com/ryanmoran/Radar/"

  app "Radar.app"
end
