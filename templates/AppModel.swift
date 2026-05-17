import Foundation
import Observation

// Declare the app model that holds and mutates the user's notes.
//
// What it needs:
//   - the @Observable macro so SwiftUI views can observe changes
//   - public visibility
//   - a stored property holding the current list of notes
//   - a public initializer
//   - methods to add a note and to delete a note
