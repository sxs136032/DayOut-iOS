import SwiftUI

@main
struct DayOutApp: App {
    private let repository: any ActivityRepository

    init() {
        self.repository = MockActivityRepository()
    }

    var body: some Scene {
        WindowGroup {
            ExploreView(model: ExploreModel(repository: repository))
        }
    }
}
