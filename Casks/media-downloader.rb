cask "media-downloader" do
  version "3.1.2"
  sha256 "2de6fd93ec0640de0d8a5005b20b4c25b9fc99eacbd4249a99fac00fb1bf4142"

  url "https://media-downloader-web.web.app/downloads/MediaDownloader-macOS.zip"
  name "Media Downloader"
  desc "High-speed video and audio downloader for YouTube, Instagram, TikTok and more"
  homepage "https://media-downloader-web.web.app/"

  livecheck do
    url "https://media-downloader-web.web.app/version.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: ">= :catalina"

  app "Media_Downloader.app"

  zap trash: [
    "~/Library/Application Support/MediaDownloader",
    "~/Library/Preferences/com.ranok.mediadownloader.plist",
  ]
end
