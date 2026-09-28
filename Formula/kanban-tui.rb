class KanbanTui < Formula
  desc "Keyboard-first kanban board for the terminal"
  homepage "https://github.com/m0hdrar/kanban_tui"
  version "0.3.1"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/m0hdrar/kanban_tui/releases/download/v0.3.1/kanban-tui-darwin-arm64.tar.gz"
    sha256 "2531f64ddfb99e5b987e5b89de65a55e8cde331c1216875e17a26ef492679766"
  end
  on_intel do
    url "https://github.com/m0hdrar/kanban_tui/releases/download/v0.3.1/kanban-tui-darwin-x64.tar.gz"
    sha256 "ea4527b43914056c6b06190c8a00ff3b8d850ff99d624fe3b07836664692da3d"
  end

  def install
    bin.install "kanban-tui"
  end

  test do
    assert_predicate bin/"kanban-tui", :executable?
  end
end
