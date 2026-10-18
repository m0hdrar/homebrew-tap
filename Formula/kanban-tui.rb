class KanbanTui < Formula
  desc "Keyboard-first kanban board for the terminal"
  homepage "https://github.com/m0hdrar/kanban_tui"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/m0hdrar/kanban_tui/releases/download/v0.8.0/kanban-tui-darwin-arm64.tar.gz"
      sha256 "3a32322a8a0869c49f7048a4f40544c7b7c819be773aa94cb57ad481ab2107e7"
    end
    on_intel do
      url "https://github.com/m0hdrar/kanban_tui/releases/download/v0.8.0/kanban-tui-darwin-x64.tar.gz"
      sha256 "7ae7e5dfaa78f685ef12c235223641a7929396834d155e84e05a1f11f77c78a8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/m0hdrar/kanban_tui/releases/download/v0.8.0/kanban-tui-linux-arm64.tar.gz"
      sha256 "23e6e39eb698a8d0fed15f78fb93781867779be3b8abe1fdd1567f398e173d1f"
    end
    on_intel do
      url "https://github.com/m0hdrar/kanban_tui/releases/download/v0.8.0/kanban-tui-linux-x64.tar.gz"
      sha256 "103d684dc9935a808dd235890445413c3fbb84730a3d61aafdcf27cd0b48dc28"
    end
  end

  def install
    bin.install "kanban-tui"
  end

  test do
    assert_predicate bin/"kanban-tui", :executable?
  end
end
