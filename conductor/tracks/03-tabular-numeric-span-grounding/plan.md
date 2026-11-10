# Implementation Plan

- [ ] Define neutral `TableCellSpan`, `NumericIntervalToken`, and `FootnoteMarkerLink` types in `citeweft`'s layout/token IR with exact UTF-8 byte-offset and header-lineage fields.
- [ ] Add deterministic table-cell and footnote-marker grounding across HTML, Markdown, and PDF-layout token streams without mutating raw source bytes.
- [ ] Add synthetic golden fixtures for multi-header statistical tables, confidence intervals, suppression/caution markers, and round-trip byte-span verification.
- [ ] Expose additive downstream contract fixtures for `sourceright` (`111-quantitative-table-claim-provenance`), `searchright` (`44-tobac-living-evidence-transport`), and `tobac` (`F01`).
