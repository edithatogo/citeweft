# Implementation Plan

GitHub issue: https://github.com/edithatogo/citeweft/issues/3

- [x] Add CI for format, clippy, tests, locked check, audit, and deny.
- [ ] Add independent package and release checks.
- [ ] Add independent fixtures and benchmark baselines.
- [x] Rehearse a path-preserving split of the committed neutral slice and
  compare representative logs and file hashes. Older Sourceright history is
  not claimed because the neutral files were previously untracked.
- [ ] Publish an immutable candidate release with checksums and rollback notes.
- [ ] Migrate Sourceright adapters only after downstream compatibility proof.
