import SwiftUI

public struct NoteListView: View {
  @Environment(AppModel.self) private var model
  @State private var showingAddNote = false

  public init() {}

  public var body: some View {
    NavigationStack {
      List(model.notes) { note in
        NavigationLink(value: note) {
          VStack(alignment: .leading) {
            Text(note.title)
              .font(.headline)
            Text(note.body)
              .font(.subheadline)
              .foregroundStyle(.secondary)
              .lineLimit(2)
          }
        }
      }
      .navigationTitle("Lumemo")
      .navigationDestination(for: Note.self) { note in
        NoteDetailView(note: note)
      }
      .toolbar {
        Button("Add", systemImage: "plus") {
          showingAddNote = true
        }
      }
      .sheet(isPresented: $showingAddNote) {
        AddNoteView()
      }
    }
  }
}
