import Foundation

struct Activity: Identifiable, Equatable, Sendable {
    let id: UUID
    let title: String
    let category: ActivityCategory
    let neighborhood: String
    let durationMinutes: Int
    let summary: String

    init(
        id: UUID = UUID(),
        title: String,
        category: ActivityCategory,
        neighborhood: String,
        durationMinutes: Int,
        summary: String
    ) {
        self.id = id
        self.title = title
        self.category = category
        self.neighborhood = neighborhood
        self.durationMinutes = durationMinutes
        self.summary = summary
    }
}

enum ActivityCategory: String, CaseIterable, Identifiable, Sendable {
    case outdoors = "Outdoors"
    case kids = "Kids"
    case food = "Food"
    case events = "Events"

    var id: Self { self }
}
