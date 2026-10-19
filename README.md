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

## Numeric callout grammar

The deterministic reference model accepts positive integer bracket callouts,
comma groups, ascending inclusive hyphen/en-dash ranges, and mixed groups
(for example `[11,12]`, `[11–13]`, `[1, 3-5]`). Whitespace around members and
separators is accepted. Each member produces a callout retaining the **entire
original bracket surface and UTF-8 byte span**; repeated members are retained.
Unknown ordinals have no reference link, zero confidence and review status.

Expansion is limited to 256 members per bracket surface. Malformed, overflowing,
descending, zero-valued, nested or excessive numeric groups emit an
`invalid_numeric_callout` diagnostic and no partial links. Arbitrary bracketed
prose is ignored. The model does not extract DOCX superscript runs or prove
reference identity, first-use order, or scientific support. These encodings are
fixture-qualified; the document adapter remains responsible for faithful source
extraction and mapping any derived normalization back to the original document.
