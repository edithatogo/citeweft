# Contributing

1. Read `conductor/product-guidelines.md` and the active track before editing.
2. Keep changes small and preserve neutral extraction boundaries.
3. Add deterministic tests for new contracts and malformed-input behavior.
4. Run the full local gates:

```text
cargo fmt --all --check
cargo clippy --locked --all-targets -- -D warnings
cargo test --locked
cargo check --locked
cargo audit
cargo deny check
```

5. Do not claim GROBID compatibility, production accuracy, or downstream
   migration without independent evidence recorded in Conductor.
