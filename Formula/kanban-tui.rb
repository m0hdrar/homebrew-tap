class KanbanTui < Formula
  desc "Keyboard-first kanban board for the terminal"
  homepage "https://github.com/m0hdrar/kanban_tui"
  version "0.6.0"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/m0hdrar/kanban_tui/releases/download/v0.6.0/kanban-tui-darwin-arm64.tar.gz"
    sha256 "b95a1da0469448a34073928193d472c2c1b918fd793bbceda288e9a930d6be73"
  end
  on_intel do
    url "https://github.com/m0hdrar/kanban_tui/releases/download/v0.6.0/kanban-tui-darwin-x64.tar.gz"
    sha256 "c39bbb14806c2959294628143f9e5d5bb6e0b9699a1e7b8529e75a15fea66752"
  end

  def install
    bin.install "kanban-tui"
  end

  test do
    assert_predicate bin/"kanban-tui", :executable?
  end
end
