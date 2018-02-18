cask "radar" do
  version "0.7"
  sha256 "ad5242e8f082b8f1cb050332b3e4178a4464bc74d8f83c60c36ca4ae83708a8f"

  url "https://storage.googleapis.com/radar-builds/Radar-#{version}.tar.gz"
  name "Radar"
  homepage "https://github.com/ryanmoran/radar/"

  app "Radar.app"
end
