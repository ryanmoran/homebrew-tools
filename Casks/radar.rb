cask "radar" do
  version "0.10"
  sha256 "c5a30ed222a5db57cf71b50c738f268ce00b17c14557f2356c70ec7bd932d99b"

  url "https://storage.googleapis.com/radar-builds/Radar-#{version}.tar.gz"
  name "Radar"
  homepage "https://github.com/ryanmoran/radar/"

  app "Radar.app"
end
