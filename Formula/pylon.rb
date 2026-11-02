class Pylon < Formula
  desc "Command-line interface for the Pylon API"
  homepage "https://github.com/pylon-labs/pylon-cli"
  version "0.1.1"
  license all_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/pylon-labs/pylon-cli/releases/download/v#{version}/pylon-aarch64-apple-darwin.tar.gz"
      sha256 "4b86d923a6faf1ba128b317e197785bbf884318c733bd13e8113087816ff96d7"
    end
    on_intel do
      url "https://github.com/pylon-labs/pylon-cli/releases/download/v#{version}/pylon-x86_64-apple-darwin.tar.gz"
      sha256 "51a0494f80c0524a99792b800a3f66d84ed0208c63517f1098db1562dfc91b66"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pylon-labs/pylon-cli/releases/download/v#{version}/pylon-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0639867394efec2a71ab8b471a11cfe1ed09dfcdcf6cbef14fe01fba7368b19f"
    end
    on_intel do
      url "https://github.com/pylon-labs/pylon-cli/releases/download/v#{version}/pylon-x86_64-unknown-linux-musl.tar.gz"
      sha256 "86cc04a5438d3cfcfd4aea35cb4965a10d15aec4370d0b34b7f7e6d72cda7e50"
    end
  end

  def install
    bin.install "pylon"
  end

  test do
    assert_match "pylon #{version}", shell_output("#{bin}/pylon --version")
  end
end
