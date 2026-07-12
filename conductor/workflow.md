# Workflow

1. Inspect the live repository and active track before editing.
2. Make small, reviewable changes within the active track boundary.
3. Add or update deterministic fixtures and policy tests with each contract.
4. Run `cargo fmt --all --check`, `cargo clippy --all-targets -- -D warnings`,
   `cargo test --locked`, and `cargo check --locked` before closeout.
5. Record external blockers explicitly; do not infer release or compatibility
   evidence from local compilation alone.
6. Commit only intentional changes with the corresponding Conductor update.
