# Rust dependency rationalisation — citeweft (2026-11-13)

**Status:** proposal and review contract; no code adoption, runtime verification or benchmark result is claimed here.

## Repository-specific decisions

- Preserve this small, neutral scholarly extraction core and its existing source/provenance guarantees.
- **Verified:** minimal Serde, SHA-2 and Thiserror runtime dependency set; no need for asynchronous I/O, SQL or TUI.
- **Evaluate:** Proptest for extract/serialize round trips, span boundary invariants, malformed UTF-8 policy and input-size limits; Criterion against fixed representative synthetic documents.
- **Conditional:** Regex for narrow lexical checks only when benchmarked against existing parser; Bytes only for demonstrated zero-copy buffer boundaries.
- **Reject:** adding Tokio, Reqwest, Rayon, Polars, Ratatui, SQLx, PyO3, Syn/Quote without a supported use case.
- **Downstream:** Searchright and Sourceright should consume the same versioned Citeweft contract with independent pin/consumer smoke tests.

## Evidence and release gate
1. Discover actual source, package boundary, MSRV, lockfile, existing tests and Conductor ownership; avoid speculative dependencies.
2. For runtime behaviour, write failing contract tests before implementation, run targeted and full suites; preserve stable schemas, errors, CLI semantics and deterministic outputs.
3. Record `cargo tree -d`, feature selections, security/licensing/advisory reviews, transitive dependency cost and rollback before accepting an adoption.
4. For performance changes, benchmark identical inputs and correctness/invariance oracles; do not claim improvements without measurements.
5. This document is a planning entry, NOT proof of compilation, hosted CI or scientific validation; update status only after a revision-bound receipt.
