import SwiftUI

// Declare the modal sheet used to compose a new note.
//
// What it needs:
//   - public visibility and a public initializer
//   - an @Environment property reading the shared AppModel
//   - an @Environment(\.dismiss) property to close the sheet
//   - local @State for the title and body fields
//   - a body wrapped in a NavigationStack containing a Form with:
//     * a TextField for the title
//     * a TextField for the body (multi-line)
//   - a toolbar with:
//     * a cancel button that dismisses the sheet
//     * an add button that creates a Note, hands it to the model, and
//       dismisses the sheet — disabled when the title is empty
