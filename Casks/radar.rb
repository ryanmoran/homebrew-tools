cask "radar" do
  version "0.13"
  sha256 "b64e0904eadfe58e9b261b79953865a185989c32b682bfcd274943784868884c"

  url "https://storage.googleapis.com/radar-builds/Radar-#{version}.tar.gz"
  name "Radar"
  homepage "https://github.com/ryanmoran/radar/"

  app "Radar.app"
end
