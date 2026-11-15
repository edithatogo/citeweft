# Pull request template maintenance

## Task and scope

Task: add a repository-local pull request template under the maintainer's
current request to audit repository templates and add suitable missing ones.

This is a bounded contribution-metadata task. It does not complete the
independent-release or extraction-feature tracks.

- Base branch: `main`
- Prepared against commit: `c77b325f5eb3fc67e6882b8bb0e2dcae484057c7`
- Integration branch: `docs/pr-template-20261115`
- Owned paths: `.github/pull_request_template.md` and this record
- State: candidate prepared; committed readback, checks and integration pending

## Context and observed preparation

The root, `.github/` and `docs/` template locations were inspected. No local
template was found; the account-wide default remains available. Product
guidelines, contribution guidance, the workflow and both active track
specifications/plans were reviewed. Open pull-request changed paths showed no
overlapping PR-template addition at preparation time.

The proposed Markdown asks for purpose, related work, actual validation
evidence, compatibility and documentation. Its prompts preserve neutral
extraction and evidence boundaries. Structural review found balanced HTML
comments, four unchecked author checklist items and a final newline.

## Acceptance and handoff

- [ ] Read back the committed template and confirm the intended two-file diff.
- [ ] Report the applicable existing checks at the exact candidate head.
- [ ] Integrate through the repository's ordinary review and merge requirements.

Runtime, package, audit and dependency-deny checks were not executed during
this read-only preparation. Existing contribution and closeout requirements
remain applicable. No release, downstream-compatibility or accuracy task is
marked complete by this metadata change.
