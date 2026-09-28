class KanbanTui < Formula
  desc "Keyboard-first kanban board for the terminal"
  homepage "https://github.com/m0hdrar/kanban_tui"
  version "0.3.0"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/m0hdrar/kanban_tui/releases/download/v0.3.0/kanban-tui-darwin-arm64.tar.gz"
    sha256 "903a5caf29c7e80cc1ce45604da99fcc5eec19c646d33ac48e56f98f8fb3a128"
  end
  on_intel do
    url "https://github.com/m0hdrar/kanban_tui/releases/download/v0.3.0/kanban-tui-darwin-x64.tar.gz"
    sha256 "6653a9c5b22a50d1f3cb06a0516d49e408f0cf11216641bc7b3fd4c4ffa1f90f"
  end

  def install
    bin.install "kanban-tui"
  end

  test do
    assert_predicate bin/"kanban-tui", :executable?
  end
end
