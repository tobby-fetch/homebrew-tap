# Tobby Homebrew tap

Homebrew formulae for [Tobby](https://github.com/tobby-fetch/tobby-fetch) —
the tool that carries OCI assets (container images, Helm charts, arbitrary
OCI artifacts, packaged file sets) across network zones, down to air-gapped
ones, driven by signed Recipes.

## Install

```sh
brew install tobby-fetch/tap/tobby
```

Then:

```sh
tobby version
```

## What you get

The formula installs the official macOS release binaries (Apple Silicon and
Intel) — the same reproducible, bit-identical artifacts as every other
release target, each with a CycloneDX SBOM and SLSA provenance attached to
the [GitHub release](https://github.com/tobby-fetch/tobby-fetch/releases).
Homebrew verifies the pinned SHA-256 checksum on download; the checksums in
this formula are taken from the release's `SHA256SUMS`.

## Support tier

macOS is a **convenience tier**: the full test suite runs on macOS in CI,
but the validated operating scope of Tobby is Linux (server) and Windows
(mirror workstation). See the platform matrix in the project documentation.

## License

The formulae in this tap are published under
[GPL-3.0-only](https://www.gnu.org/licenses/gpl-3.0.html), like Tobby
itself. © 2026 infraBuilder SASU and contributors.
