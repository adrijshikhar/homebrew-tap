# This file was generated for GoReleaser & Homebrew Tap.
cask "aim" do
  version "0.1.0"

  on_macos do
    on_arm do
      sha256 "8e449ae052935da9c6706118c219364dfccc848718895e6a409288c012d9378b"
      url "https://github.com/adrijshikhar/aim/releases/download/v#{version}/aim_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "778620262c8e18893b8a00e396f23257b04b445cf111e563244b3b97e50c5fb8"
      url "https://github.com/adrijshikhar/aim/releases/download/v#{version}/aim_#{version}_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "1f06c3eaca3783b4dd96ee2ee545cd6195505a3d4809eb60b10a355522868cde"
      url "https://github.com/adrijshikhar/aim/releases/download/v#{version}/aim_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "6a5056f9df784ef258203c185ff4b589744037264b64b208c94235cd4b5b3744"
      url "https://github.com/adrijshikhar/aim/releases/download/v#{version}/aim_#{version}_linux_amd64.tar.gz"
    end
  end

  name "aim"
  desc "Isolated Profile Manager for AI Agents (Antigravity, Claude Code, Codex, Gemini)"
  homepage "https://github.com/adrijshikhar/aim"

  livecheck do
    skip "Auto-generated on release."
  end

  binary "aim"

  postflight do
    if system_command("/usr/bin/xattr", args: ["-h"]).exit_status == 0
      system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/aim"]
    end
  end
end
