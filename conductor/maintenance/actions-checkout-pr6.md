# Checkout action maintenance (PR #6)

## Scope

Refresh the four checkout pins in `.github/workflows/ci.yml` to the immutable
`actions/checkout` v7.0.1 commit
`3d3c42e5aac5ba805825da76410c181273ba90b1`, correcting their version comments.
The preparation base was `fb300f02710f04c5e0ecd2454c69c24b48afc8f4`.

This is bounded CI maintenance. The independent-release and tabular-extraction
tracks keep their existing completion states. Application sources, Cargo.lock,
workflow triggers, permissions, credentials policy, and privacy checks remain
unchanged by this maintenance.

## Review and acceptance

The upstream v7.0.1 tag resolves to the pinned commit. Checkout v7 uses Node 24
and defaults to rejecting unsafe fork checkout under `pull_request_target` and
`workflow_run`; this repository's CI uses `pull_request` and `push` on hosted
Ubuntu runners. The workflow retains `persist-credentials: false`.

- [ ] Verify the committed diff contains only the four checkout pins/comments and this record.
- [ ] Obtain successful `rust`, `supply-chain`, `package`, `workflow-harness`, and `privacy-and-secrets` checks on the refreshed head.
- [ ] Run the full local fmt, Clippy, locked test/check, audit and deny gates required by CONTRIBUTING.md; hosted success alone does not claim this local execution.
- [ ] Integrate through the ordinary review and merge requirements.

No local Rust, audit, dependency-deny, or PowerShell harness execution was
performed during this read-only preparation. The successful July checks on
the original PR head do not qualify the refreshed tree. Existing contribution
and closeout gates remain applicable. Building the candidate package in CI
does not constitute a registry release or downstream compatibility proof.

Upstream release: https://github.com/actions/checkout/releases/tag/v7.0.1
