//! CiteWeft's backend-neutral scholarly document extraction core.
//!
//! CiteWeft deliberately does not own CSL, provider, review-sidecar, MCP, or
//! document-writeback concerns. Downstream applications may adapt these
//! neutral records into their own workflows.

pub mod citeweft;
pub mod entity_model;
pub mod layout;
pub mod reference_model;
pub mod routing;
