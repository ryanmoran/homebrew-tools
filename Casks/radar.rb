cask "radar" do
  version "0.17"
  sha256 "9584ddec9e9928da8413c7eccac3d1c986525f18b88a174289019ed56e29a84d"

  url "https://storage.googleapis.com/radar-builds/Radar-#{version}.tar.gz"
  name "Radar"
  homepage "https://github.com/ryanmoran/Radar/"

  app "Radar.app"
end
