cask "freeflow" do
  version "0.1.0"
  sha256 :no_check

  url "https://github.com/build-trust/freeflow/releases/download/v#{version}/FreeFlow.dmg"
  name "FreeFlow"
  desc "Press a hotkey, dictate naturally, polished text appears in any app."
  homepage "https://github.com/build-trust/freeflow"

  depends_on macos: ">= :sonoma"

  app "FreeFlow.app"

  zap trash: [
    "~/Library/Preferences/computer.autonomy.freeflow.plist",
    "~/Library/Caches/computer.autonomy.freeflow",
    "~/Library/Application Support/FreeFlow",
  ]
end
