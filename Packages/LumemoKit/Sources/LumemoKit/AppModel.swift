import Foundation
import Observation

@Observable
public final class AppModel {
  public var notes: [Note] = []

  public init() {}

  public func add(note: Note) {
    notes.append(note)
  }

  public func delete(note: Note) {
    notes.removeAll { $0.id == note.id }
  }
}
