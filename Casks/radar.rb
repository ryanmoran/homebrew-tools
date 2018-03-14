cask "radar" do
  version "0.14"
  sha256 "778785eb4227640a8174d2dd3929c3e7588154f878a8bf5084ff072d33e505f9"

  url "https://storage.googleapis.com/radar-builds/Radar-#{version}.tar.gz"
  name "Radar"
  homepage "https://github.com/ryanmoran/Radar/"

  app "Radar.app"
end
