# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Azioncli < Formula
  desc "The developer friendly way to interact with Azion"
  homepage "https://github.com/aziontech/azion-cli"
  version "0.70.0"
  license "MIT"

  depends_on "jq"

  on_macos do
    url "https://github.com/aziontech/azion-cli/releases/download/0.70.0/azioncli_0.70.0_darwin_amd64.tar.gz"
    sha256 "0eaf52efef0f8a03bcf1ca4506b50784d190da1e7c1e46790ea988990ac2527b"

    def install
      bin.install "azioncli"
      bash_completion.install "completions/azioncli.bash" => "azioncli"
      zsh_completion.install "completions/azioncli.zsh" => "_azioncli"
      fish_completion.install "completions/azioncli.fish"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Azioncli
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aziontech/azion-cli/releases/download/0.70.0/azioncli_0.70.0_linux_amd64.tar.gz"
      sha256 "686cfd22dfdccbd3fbd824c1d6f9b98f61cf48bbaac3c58bfcccb3c9826f3e9b"

      def install
        bin.install "azioncli"
        bash_completion.install "completions/azioncli.bash" => "azioncli"
        zsh_completion.install "completions/azioncli.zsh" => "_azioncli"
        fish_completion.install "completions/azioncli.fish"
      end
    end
  end
end
