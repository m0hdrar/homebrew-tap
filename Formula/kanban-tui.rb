class KanbanTui < Formula
  desc "Keyboard-first kanban board for the terminal"
  homepage "https://github.com/m0hdrar/kanban_tui"
  version "0.4.0"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/m0hdrar/kanban_tui/releases/download/v0.4.0/kanban-tui-darwin-arm64.tar.gz"
    sha256 "0b7cb59e4d2d9973cb5a9d6929ae824673e20051fa7ba9118a7f0a8f2ab0e0d5"
  end
  on_intel do
    url "https://github.com/m0hdrar/kanban_tui/releases/download/v0.4.0/kanban-tui-darwin-x64.tar.gz"
    sha256 "dbeb62b30ebd2e8eed8693863cff13581673abbc2c9bd0520cc328c08d0d615e"
  end

  def install
    bin.install "kanban-tui"
  end

  test do
    assert_predicate bin/"kanban-tui", :executable?
  end
end
