# Tabular Numeric and Footnote Span Grounding

Extend `citeweft`'s neutral document-extraction IR with deterministic sub-document table-cell coordinates, numeric point/interval span extraction, and footnote/caution-marker linkage for structured scientific and official statistical documents consumed by `sourceright` (`Track 111`), `searchright` (`Track 42`, `Track 44`), and `tobac` (`F01`).

## Scope and boundaries

- Emit neutral table-cell coordinate tokens (`table_index`, `row_index`, `col_index`, header path, UTF-8 byte range, and optional page bounding box) without embedding domain-specific epidemiology or bibliographic policy.
- Parse and ground numeric point estimates and uncertainty intervals (`95% CI`, `RSE`, standard error, `<LOQ` / suppression markers) alongside their attached footnote symbols (`*`, `†`, `np`, `n.a.`) and exact character/byte spans.
- Preserve `citeweft`'s zero-network, domain-neutral extraction boundary; downstream consumers (`sourceright`, `searchright`, `tobac`) own domain interpretation, citation verification, and partial-identification interval construction.
