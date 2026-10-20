import Foundation

struct MockActivityRepository: ActivityRepository {
    func activities() async throws -> [Activity] {
        try await Task.sleep(for: .milliseconds(250))

        return [
            Activity(
                title: "Morning at the Botanical Garden",
                category: .outdoors,
                neighborhood: "Downtown",
                durationMinutes: 90,
                summary: "A relaxed walk with plenty of space to explore."
            ),
            Activity(
                title: "Children's Discovery Center",
                category: .kids,
                neighborhood: "Central",
                durationMinutes: 120,
                summary: "Hands-on exhibits and indoor activities for families."
            ),
            Activity(
                title: "Neighborhood Farmers Market",
                category: .food,
                neighborhood: "Westside",
                durationMinutes: 75,
                summary: "Local food, coffee, and a casual weekend atmosphere."
            ),
            Activity(
                title: "Outdoor Community Concert",
                category: .events,
                neighborhood: "Midtown",
                durationMinutes: 90,
                summary: "A small local event that works well as an evening stop."
            )
        ]
    }
}
