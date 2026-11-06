cask "marimo-desktop" do
  version "0.2.0"
  sha256 "b3e207d51769c2e28ed5f4de74b39ec095835d84d165fbd4dfb1c2448b8235be"

  url "https://github.com/t0mrg/MarimoDesktop/releases/download/v#{version}/MarimoDesktop.zip"
  name "Marimo Desktop"
  desc "Native macOS app for Marimo notebooks"
  homepage "https://github.com/t0mrg/MarimoDesktop"

  depends_on macos: ">= :tahoe"

  app "MarimoDesktop.app"

  # Only needed while the app is not notarised
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/MarimoDesktop.app"]
  end

  zap trash: "~/Library/Application Support/MarimoDesktop"
end
