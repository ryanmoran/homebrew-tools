cask "radar" do
  version "0.5"
  sha256 "5bd64589ac5c9fc5342f84f642062cca6c23679fdf41a00d5e9f33fb5cfc7b8a"

  url "https://storage.googleapis.com/radar-builds/Radar-#{version}.tar.gz"
  name "Radar"
  homepage "https://github.com/ryanmoran/radar/"

  app "Radar.app"
end
