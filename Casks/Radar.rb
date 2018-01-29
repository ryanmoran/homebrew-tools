cask "radar" do
  version "0.4"
  sha256 "052bc9decb517aecbe839577fbc8559f1a50994c25e04897c35b83e700f79d14"

  url "https://storage.googleapis.com/radar-builds/Radar-#{version}.tar.gz"
  name "Radar"
  homepage "https://github.com/ryanmoran/radar/"

  app "Radar.app"
end
