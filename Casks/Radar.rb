cask "radar" do
  version "0.1"
  sha256 "0bc0c310b515bb8fa335cab4eb1f5783b2b3dbd7e77e1b760b0711c1c41bb04c"

  url "https://storage.googleapis.com/radar-builds/Radar-#{version}.tar.gz"
  name "Radar"
  homepage "https://github.com/ryanmoran/radar/"

  app "Radar.app"
end
