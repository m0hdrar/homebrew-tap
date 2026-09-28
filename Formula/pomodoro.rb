class Pomodoro < Formula
  desc "Keyboard-first terminal Pomodoro timer"
  homepage "https://github.com/m0hdrar/pomodoro_tui"
  version "0.2.0"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/m0hdrar/pomodoro_tui/releases/download/v0.2.0/pomodoro-darwin-arm64.tar.gz"
    sha256 "4225dea4b67e7d9744a6532bc96fa2e2f0c12a85ae5425b00f8b7a0ebbaeb2b5"
  end
  on_intel do
    url "https://github.com/m0hdrar/pomodoro_tui/releases/download/v0.2.0/pomodoro-darwin-x64.tar.gz"
    sha256 "6642f3ef87d0f21d94d763beb1edd4a3df5ff960d5511ba6ee159d758786dd3b"
  end

  def install
    bin.install "pomodoro"
  end

  test do
    assert_predicate bin/"pomodoro", :executable?
  end
end
