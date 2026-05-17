import LumemoApp
import LumemoKit
import SwiftUI

@main
struct Lumemo: App {
  @State private var model = AppModel()

  var body: some Scene {
    WindowGroup {
      NoteListView()
        .environment(model)
    }
  }
}
