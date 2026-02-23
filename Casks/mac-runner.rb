cask "mac-runner" do
  version "1.7.2"
  sha256 "c70ecf26be84db1891d7dfbe9f7dfc100f4d5137d4640657abdb54e7319de221"

  url "https://github.com/omniaura/mac-runner/releases/download/v#{version}/MacRunner-#{version}.zip"
  name "Mac Runner"
  desc "Mac menu bar app for managing GitHub Actions self-hosted runners"
  homepage "https://github.com/omniaura/mac-runner"

  depends_on macos: ">= :ventura"

  app "MacRunner.app"

  zap trash: [
    "~/Library/Preferences/co.omniaura.MacRunner.plist",
    "~/Library/Application Support/MacRunner",
  ]
end
