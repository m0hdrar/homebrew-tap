class KanbanTui < Formula
  desc "Keyboard-first kanban board for the terminal"
  homepage "https://github.com/m0hdrar/kanban_tui"
  version "0.7.0"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/m0hdrar/kanban_tui/releases/download/v0.7.0/kanban-tui-darwin-arm64.tar.gz"
    sha256 "bdfad6233023a781be5610a1f6ec4a2035d6d16aa391de6f9888e99e23465e23"
  end
  on_intel do
    url "https://github.com/m0hdrar/kanban_tui/releases/download/v0.7.0/kanban-tui-darwin-x64.tar.gz"
    sha256 "e011b2a51c57ef3cd242f2e047199bfd69b6a952ed96b88bbe38c2a93c3d3e1b"
  end

  def install
    bin.install "kanban-tui"
  end

  test do
    assert_predicate bin/"kanban-tui", :executable?
  end
end
