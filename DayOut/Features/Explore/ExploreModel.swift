import Foundation
import Observation

@MainActor
@Observable
final class ExploreModel {
    private let repository: any ActivityRepository

    private(set) var activities: [Activity] = []
    private(set) var isLoading = false
    private(set) var errorMessage: String?

    init(repository: any ActivityRepository) {
        self.repository = repository
    }

    func load() async {
        guard activities.isEmpty else { return }

        isLoading = true
        errorMessage = nil

        do {
            activities = try await repository.activities()
        } catch {
            errorMessage = "Unable to load activities."
        }

        isLoading = false
    }
}
