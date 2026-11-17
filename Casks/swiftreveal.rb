cask "swiftreveal" do
  arch arm: "arm64", intel: "x86_64"

  version "0.9.1"
  on_arm do
    sha256 "2cd888289456f0c727da5e01714c881073c40816d284f64f8c8a307b9e8cf31d"
  end
  on_intel do
    sha256 "d44025159b206106c554b2e2b14228c9ac5c81296eeac9a2f19475b9735d7532"
  end

  url "https://github.com/t0mrg/swiftreveal/releases/download/v#{version}/SwiftReveal-macOS-#{arch}.zip"
  name "SwiftReveal"
  desc "Native editor for structured slide presentations"
  homepage "https://github.com/t0mrg/swiftreveal"

  depends_on macos: :sonoma

  app "SwiftReveal.app"

  caveats <<~EOS
    SwiftReveal is ad-hoc signed and is not yet notarized by Apple.
    macOS may block the first launch. Follow the first-launch instructions at:
      https://github.com/t0mrg/swiftreveal#install
  EOS
end
