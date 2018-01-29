cask "radar" do
  version "0.3"
  sha256 "d23dcbe4a8e4d28dfb4a4263df0c11240e57744a77347964179f3a58b4c46c39"

  url "https://storage.googleapis.com/radar-builds/Radar-#{version}.tar.gz"
  name "Radar"
  homepage "https://github.com/ryanmoran/radar/"

  app "Radar.app"
end
