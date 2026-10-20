import SwiftUI

struct ExploreView: View {
    @State private var model: ExploreModel

    init(model: ExploreModel) {
        _model = State(initialValue: model)
    }

    var body: some View {
        NavigationStack {
            Group {
                if model.isLoading && model.activities.isEmpty {
                    ProgressView("Finding ideas...")
                } else if let errorMessage = model.errorMessage {
                    ContentUnavailableView(
                        "Couldn't Load Activities",
                        systemImage: "exclamationmark.triangle",
                        description: Text(errorMessage)
                    )
                } else {
                    List(model.activities) { activity in
                        ActivityCard(activity: activity)
                    }
                    .listStyle(.plain)
                }
            }
            .navigationTitle("DayOut")
            .task {
                await model.load()
            }
        }
    }
}

#Preview {
    ExploreView(model: ExploreModel(repository: MockActivityRepository()))
}
