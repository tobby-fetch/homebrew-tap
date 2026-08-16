# SPDX-License-Identifier: GPL-3.0-only
# Copyright © 2026 infraBuilder SASU and contributors
#
# Formula for the macOS convenience tier of Tobby (NFR-001). Checksums come
# from the release's SHA256SUMS; the template lives in the main repository
# under packaging/homebrew/tobby.rb.
class Tobby < Formula
  desc "Carries OCI assets across network zones, down to air-gapped ones"
  homepage "https://tobby-fetch.github.io/tobby-fetch/"
  license "GPL-3.0-only"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tobby-fetch/tobby-fetch/releases/download/v#{version}/tobby-darwin-arm64"
      sha256 "84e3459a8baec24798314ae7b57dbd7913314b7cbc526953affedeffb80640fd"
    else
      url "https://github.com/tobby-fetch/tobby-fetch/releases/download/v#{version}/tobby-darwin-amd64"
      sha256 "8edc077138869492cdc891fb5d51818a3f6ac45ee102579feded707ad0917526"
    end
  end

  def install
    binary = Dir["tobby-darwin-*"].first || "tobby-darwin-#{Hardware::CPU.arm? ? "arm64" : "amd64"}"
    bin.install binary => "tobby"
  end

  def caveats
    <<~EOS
      macOS is a convenience tier: full test suite in CI, but the validated
      operating scope is Linux (server) and Windows (mirror workstation).
      See the platform matrix in the documentation.
    EOS
  end

  test do
    assert_match "tobby", shell_output("#{bin}/tobby version")
  end
end
