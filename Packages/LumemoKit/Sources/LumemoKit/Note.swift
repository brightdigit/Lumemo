import Foundation

public struct Note: Identifiable, Codable, Hashable {
  public var id: UUID
  public var title: String
  public var body: String
  public var createdAt: Date

  public init(id: UUID = UUID(), title: String, body: String, createdAt: Date = .now) {
    self.id = id
    self.title = title
    self.body = body
    self.createdAt = createdAt
  }
}
