# Independent Release and Downstream Compatibility

Prove the new crate independently in CI, audit its package and security
surfaces, create an immutable candidate release, and only then plan downstream
Sourceright adapter consumption.

## Serde dependency disposition — 18 November 2026

The `citeweft` crate already uses `serde` derive for extraction/provenance structures; `serde_json` is a **dev dependency** used in tests. Its core purpose is evidence-preserving scholarly extraction, not a required JSON serialization runtime. This is a lean, appropriate split: do not promote `serde_json` to production or add other adapters without a real Sourceright/Searchright consumer; do not replace source-offset, citation parsing or hashing logic with Serde traits.

- [ ] Verify that each existing Serde-derived public DTO has deliberate field naming, version/unknown-field policy, source span/offset preservation, and fail-closed malformed-input behaviour.
- [ ] Add roundtrip and malformed/duplicate-key, Unicode, oversized, missing/unknown field tests *only at actually consumed interchange contracts*. Preserve original text identity, source rights and independently validated extraction accuracy.
- [ ] If a downstream publisher needs JSON, measure a feature-gated adapter with consumer and package-size tests; use the existing `serde_json` dev dependency for fixture validation until production usage is justified.
- [ ] Record exact-head package/semver/SBOM and external consumer acceptance before changing the release claim. No runtime work or publication authorised by this review.
