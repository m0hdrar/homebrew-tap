class Kanban < Formula
  desc "Keyboard-first kanban board for the terminal"
  homepage "https://github.com/m0hdrar/kanban_tui"
  version "0.1.0"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/m0hdrar/kanban_tui/releases/download/v0.1.0/kanban-darwin-arm64.tar.gz"
    sha256 "56619d0f0d4d89bcfb4fbd4a5b475822e76d3ac3ae7aa6f8c615f76ad35ba2ed"
  end
  on_intel do
    url "https://github.com/m0hdrar/kanban_tui/releases/download/v0.1.0/kanban-darwin-x64.tar.gz"
    sha256 "9ae717262e512adeff528f36e30d64aaddc6d07783558e2dd05537a7a564c149"
  end

  def install
    bin.install "kanban"
  end

  test do
    assert_predicate bin/"kanban", :executable?
  end
end
