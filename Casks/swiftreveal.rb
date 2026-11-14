cask "swiftreveal" do
  arch arm: "arm64", intel: "x86_64"

  version "0.4.0"
  on_arm do
    sha256 "f19fb2b8b4b8cc4c32aeb644f7f341ace736dd749be51e4555583b50a4e032bd"
  end
  on_intel do
    sha256 "d028865f34d4995fd2660f20c825b83cf54df2100246e75ce459c651ceb69b0b"
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
