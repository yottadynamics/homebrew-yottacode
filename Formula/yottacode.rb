class Yottacode < Formula
  desc "Sovereign AI coding agent for your terminal"
  homepage "https://yottacode.ai"
  version "0.5.0"

  on_macos do
    on_arm do
      url "https://github.com/yottadynamics/yottacode/releases/download/v0.5.0/yottacode_0.5.0_darwin_arm64.tar.gz"
      sha256 "e9005eb183aacf30538983b62ae04fc88518727275f36e8889c438f8c39ec7a0"
    end
    on_intel do
      url "https://github.com/yottadynamics/yottacode/releases/download/v0.5.0/yottacode_0.5.0_darwin_amd64.tar.gz"
      sha256 "cdc49b4c5878fcf8ffe3a08562624e9399f437dede143ba05c83ddcbd7dcc099"
    end
  end

  def install
    bin.install "yottacode"
  end

  def caveats
    <<~EOS
      Run yottacode setup once to choose a model provider.
    EOS
  end
end
