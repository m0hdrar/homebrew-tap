class KanbanTui < Formula
  desc "Keyboard-first kanban board for the terminal"
  homepage "https://github.com/m0hdrar/kanban_tui"
  version "0.2.1"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/m0hdrar/kanban_tui/releases/download/v0.2.1/kanban-tui-darwin-arm64.tar.gz"
    sha256 "153f7129f9837d73d15e0e0cf0d07a2ae113bdaa65855b198f92dbb74a47b69c"
  end
  on_intel do
    url "https://github.com/m0hdrar/kanban_tui/releases/download/v0.2.1/kanban-tui-darwin-x64.tar.gz"
    sha256 "536a6117dfc05c0388b694144c80e8ac1731accb62b2db37f3f2801e3f16afe9"
  end

  def install
    bin.install "kanban-tui"
  end

  test do
    assert_predicate bin/"kanban-tui", :executable?
  end
end
