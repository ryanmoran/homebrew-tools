cask "radar" do
  version "0.6"
  sha256 "bba5e0527ea735901aedae1ee22187e1712393e56eca14059412eb4215ee271d"

  url "https://storage.googleapis.com/radar-builds/Radar-#{version}.tar.gz"
  name "Radar"
  homepage "https://github.com/ryanmoran/radar/"

  app "Radar.app"
end
