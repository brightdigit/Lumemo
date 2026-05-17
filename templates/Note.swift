import Foundation

// Declare the Note model.
//
// What it needs:
//   - public visibility so it can be used from the app target
//   - conformance to Identifiable, Codable, and Hashable
//   - stored properties for: a unique id, a title, a body, and a creation date
//   - an initializer that lets callers supply the fields and defaults
//     the id and creation date when omitted
