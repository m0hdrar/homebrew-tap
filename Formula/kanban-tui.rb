class KanbanTui < Formula
  desc "Keyboard-first kanban board for the terminal"
  homepage "https://github.com/m0hdrar/kanban_tui"
  version "0.2.0"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/m0hdrar/kanban_tui/releases/download/v0.2.0/kanban-tui-darwin-arm64.tar.gz"
    sha256 "b01cd3a3769f230997f2368e39c765a704cea73f2acc4b7d86f070ed2b50db21"
  end
  on_intel do
    url "https://github.com/m0hdrar/kanban_tui/releases/download/v0.2.0/kanban-tui-darwin-x64.tar.gz"
    sha256 "78cdbe8ae612a7c67bbc74a2231640f6f4d75f99e3791f0bc52f513095a0500f"
  end

  def install
    bin.install "kanban-tui"
  end

  test do
    assert_predicate bin/"kanban-tui", :executable?
  end
end
