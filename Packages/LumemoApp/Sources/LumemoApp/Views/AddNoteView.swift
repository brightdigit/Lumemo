import SwiftUI

public struct AddNoteView: View {
  @Environment(AppModel.self) private var model
  @Environment(\.dismiss) private var dismiss
  @State private var title = ""
  @State private var noteBody = ""

  public init() {}

  public var body: some View {
    NavigationStack {
      Form {
        TextField("Title", text: $title)
        TextField("Body", text: $noteBody, axis: .vertical)
          .lineLimit(5...)
      }
      .navigationTitle("New Note")
      .toolbar {
        ToolbarItem(placement: .cancellationAction) {
          Button("Cancel") { dismiss() }
        }
        ToolbarItem(placement: .confirmationAction) {
          Button("Add") {
            model.add(note: Note(title: title, body: noteBody))
            dismiss()
          }
          .disabled(title.isEmpty)
        }
      }
    }
  }
}
