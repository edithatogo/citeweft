# Release readiness

## Current evidence

- Repository: `https://github.com/edithatogo/citeweft`
- Initial extraction commit: `f4a859e`
- Conductor linkage commit: `7778739`
- Core CI: passed on 2026-07-12
- Supply-chain CI (`cargo audit` and `cargo deny`): passed on 2026-07-12
- Workflow harness CI: passed on 2026-07-12
- Workflow harness: passed locally; GitHub CI rerun after governance hardening
- Dependabot: Cargo and GitHub Actions update configuration active
- Local crate tests: 16 passed
- Local cargo-audit: passed
- Local cargo-deny: passed
- GitHub issue: [#3](https://github.com/edithatogo/citeweft/issues/3)

## Open gates

- [x] Path-preserving split rehearsal against the committed neutral slice.
  Git fast-export/import produced a one-commit standalone repository and all
  five module hashes matched this repository. Older Sourceright history is not
  claimed because these files were newly committed at the extraction boundary.
- [ ] Independent benchmark fixtures and baseline policy.
- [ ] Package checksum and immutable candidate release.
- [ ] Downstream Sourceright adapter compatibility.
- [ ] Rollback and issue-migration evidence.

The initial extraction was intentionally created from a disposable directory
because the relevant Sourceright neutral files were uncommitted. It therefore
does not claim preserved Sourceright commit history.

The CI package job now builds a locked Cargo package and uploads the crate plus
SHA-256 checksum as a retained candidate artifact. This is candidate evidence,
not a public release or registry acceptance.
