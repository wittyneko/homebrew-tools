cask "picgo-beta" do
  version "2.3.0-beta.6"
  sha256 "6679f1d19fe967edbb93317cedc95a0f01c2e2cbf764145f1a69e59146c77ffa"

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
