cask "swiftreveal" do
  arch arm: "arm64", intel: "x86_64"

  version "0.6.0"
  on_arm do
    sha256 "b4ef577c2c12fc6ddad38880f347e6ade3159a83e00b955ad4b5e5351f2b8258"
  end
  on_intel do
    sha256 "04166f3b443c664b87defc817983cafa4a5b45710ed4bd5c94f155841b900de0"
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
