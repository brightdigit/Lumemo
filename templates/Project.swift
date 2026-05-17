import ProjectDescription

// Extend the existing Project so the Lumemo app target depends on the
// two local Swift Packages introduced in this phase.
//
// What changes from Phase 2:
//   - add a `packages:` array on the Project listing each local package
//     (LumemoKit, LumemoApp) by path
//   - on the existing app target, add a `dependencies:` array pulling in
//     the two package products as runtime dependencies
