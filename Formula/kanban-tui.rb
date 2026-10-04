class KanbanTui < Formula
  desc "Keyboard-first kanban board for the terminal"
  homepage "https://github.com/m0hdrar/kanban_tui"
  version "0.5.0"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/m0hdrar/kanban_tui/releases/download/v0.5.0/kanban-tui-darwin-arm64.tar.gz"
    sha256 "bd54c46f0069fc49ee97b64112eff2a8e116e9cb8c2632f101c6aacacbb8f83b"
  end
  on_intel do
    url "https://github.com/m0hdrar/kanban_tui/releases/download/v0.5.0/kanban-tui-darwin-x64.tar.gz"
    sha256 "c40eb5b84cd7d4a1ecf91beba30b6ffc9a3789ec243d7bb1592f93b9b02f5722"
  end

  def install
    bin.install "kanban-tui"
  end

  test do
    assert_predicate bin/"kanban-tui", :executable?
  end
end
