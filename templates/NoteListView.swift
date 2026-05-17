import SwiftUI

// Declare the screen that lists every note and lets the user add a new one.
//
// What it needs:
//   - public visibility and a public initializer
//   - an @Environment property reading the shared AppModel
//   - local @State for whether the "add note" sheet is presented
//   - a body wrapped in a NavigationStack containing:
//     * a List of the model's notes, each row a NavigationLink to the
//       detail view, showing title and a truncated body preview
//     * a navigation title
//     * a navigation destination that maps a Note to NoteDetailView
//     * a toolbar button that opens the add-note sheet
//     * a .sheet modifier presenting AddNoteView
