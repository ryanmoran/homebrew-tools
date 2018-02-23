cask "radar" do
  version "0.11"
  sha256 "fb76355f11612170281880652c975e50fde05a9e74dadfd8af0b2c4d2e76fc30"

  url "https://storage.googleapis.com/radar-builds/Radar-#{version}.tar.gz"
  name "Radar"
  homepage "https://github.com/ryanmoran/radar/"

  app "Radar.app"
end
