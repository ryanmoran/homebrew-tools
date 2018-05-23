cask "radar" do
  version "0.20"
  sha256 "de8c42b0da0d73ce48d2c556a8d8006fb65c9f1f3a7feec98b613431397073be"

  url "https://storage.googleapis.com/radar-builds/Radar-#{version}.tar.gz"
  name "Radar"
  homepage "https://github.com/ryanmoran/Radar/"

  app "Radar.app"
end
