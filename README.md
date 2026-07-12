# CiteWeft

CiteWeft is a neutral, auditable Rust core for scholarly document extraction.
It preserves source spans, uncertainty, diagnostics, backend provenance, and
bounded routing decisions without asserting bibliographic truth or silently
rewriting a downstream application's canonical records.

## Scope

The initial crate contains:

- backend-neutral scholarly document and extractor contracts;
- page/layout/token IR with explicit ambiguity diagnostics;
- deterministic reference and citation-callout extraction;
- scholarly entity recognition contracts and a deterministic recognizer;
- bounded, fingerprinted backend routing decisions.

GROBID HTTP/TEI adapters, Sourceright CSL and verification sidecars, provider
integrations, CLI/MCP surfaces, and review queues remain downstream concerns.
CiteWeft is GROBID-inspired; it is not a GROBID fork, reimplementation, or
compatibility claim.

## Status

This is a technical preview and extraction rehearsal. The repository has been
split from the audited neutral module inventory; independent release, security,
benchmark, and downstream compatibility evidence is still required before
production or registry claims.

## Development

```text
cargo fmt --all --check
cargo clippy --all-targets -- -D warnings
cargo test --locked
cargo check --locked
```

See `conductor/` for the independent project context and extraction roadmap.
