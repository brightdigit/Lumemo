import SwiftUI

public struct NoteDetailView: View {
  public let note: Note

  public init(note: Note) {
    self.note = note
  }

  public var body: some View {
    ScrollView {
      Text(note.body)
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
    .navigationTitle(note.title)
  }
}
