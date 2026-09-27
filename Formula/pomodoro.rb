class Pomodoro < Formula
  desc "Keyboard-first terminal Pomodoro timer"
  homepage "https://github.com/m0hdrar/pomodoro_tui"
  version "0.1.0"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/m0hdrar/pomodoro_tui/releases/download/v0.1.0/pomodoro-darwin-arm64.tar.gz"
    sha256 "f8a06ff4ac942e6d8b4345d93b9f4253343c68b25153510c4b89389e6033da2e"
  end
  on_intel do
    url "https://github.com/m0hdrar/pomodoro_tui/releases/download/v0.1.0/pomodoro-darwin-x64.tar.gz"
    sha256 "cb8a74bfb2a3c31a00115cc9836049f36b65db6fb1bee60b46baa0aaac95a391"
  end

  def install
    bin.install "pomodoro"
  end

  test do
    assert_predicate bin/"pomodoro", :executable?
  end
end
