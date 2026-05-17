import Testing
@testable import LumemoKit

@Suite("LumemoKit")
struct LumemoKitTests {
  @Test("Note initializes with correct values")
  func noteInitialization() {
    let note = Note(title: "Hello", body: "World")
    #expect(note.title == "Hello")
    #expect(note.body == "World")
  }

  @Test("AppModel starts with no notes")
  func appModelEmpty() {
    let model = AppModel()
    #expect(model.notes.isEmpty)
  }

  @Test("AppModel adds notes")
  func appModelAddsNote() {
    let model = AppModel()
    model.add(note: Note(title: "Test", body: "Body"))
    #expect(model.notes.count == 1)
  }

  @Test("AppModel deletes notes")
  func appModelDeletesNote() {
    let model = AppModel()
    let note = Note(title: "Test", body: "Body")
    model.add(note: note)
    model.delete(note: note)
    #expect(model.notes.isEmpty)
  }
}
