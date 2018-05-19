cask "radar" do
  version "0.16"
  sha256 "47153e9972f05d60b1cd0fdd19c0aff16b02d82abe447e34afc5576f3a360781"

  url "https://storage.googleapis.com/radar-builds/Radar-#{version}.tar.gz"
  name "Radar"
  homepage "https://github.com/ryanmoran/Radar/"

  app "Radar.app"
end
