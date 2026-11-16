cask "swiftreveal" do
  arch arm: "arm64", intel: "x86_64"

  version "0.9.0"
  on_arm do
    sha256 "ce9d51faece52a4681902d5858a59866bab5ad6317741b4e9a542522b3d40bef"
  end
  on_intel do
    sha256 "b361d1bde7456589de0220e76c15aa740a38dbd5e05974bedddc4c98c4e775cc"
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
