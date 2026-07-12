# Security Policy

## Reporting a vulnerability

Please do not disclose security vulnerabilities in public issues. Use the
repository's private GitHub security advisory flow or contact the maintainers
through the GitHub profile for `edithatogo`.

Reports should include the affected commit, reproduction steps, impact,
whether untrusted document input is required, and any proposed mitigation.

## Security boundaries

CiteWeft is a technical preview. It does not fetch network content, execute
document-provided code, assert bibliographic truth, or write downstream
canonical records. New backends must preserve bounded input, explicit
diagnostics, and provenance.
