cask "picgo@2.3.0.5" do
  version "2.3.0-beta.5"
  sha256 "1ebe5328a354ed6d6b1eb2614ee38b6c5fcbd3c7094fec7f46f9cd52fd7f989c"

  url "https://github.com/Molunerfinn/PicGo/releases/download/v#{version}/PicGo-#{version}-mac.zip"
  name "PicGo"
  desc "Tool for uploading images"
  homepage "https://github.com/Molunerfinn/PicGo"

  livecheck do
    url :url
    strategy :git
    regex(/^v?(\d+(?:\.\d+)*)$/i)
  end

  app "PicGo.app"
end
