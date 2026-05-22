cask "aspire" do
  arch arm: "arm64", intel: "x64"

  version "13.3.5"
  sha256 arm:   "7ae8181bec6dee12d1cfb039dd201d7cfb71b51c674b0f06a853f402742afbd3",
         intel: "dafcf1633a6f2970c017d75287f502b0a033d65ff6acac02899f2761f8d16c62"

  url "https://ci.dot.net/public/aspire/13.3.5-preview.1.26270.6/aspire-cli-osx-#{arch}-#{version}.tar.gz",
      verified: "ci.dot.net/public/aspire/"
  name "Aspire CLI"
  desc "CLI for building observable, production-ready distributed applications"
  homepage "https://aspire.dev/"

  livecheck do
    skip "ci.dot.net artifact storage has no version index; Aspire release automation manages cask updates"
  end

  binary "aspire"

  zap trash: "~/.aspire"
end
