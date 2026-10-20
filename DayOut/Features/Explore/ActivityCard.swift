import SwiftUI

struct ActivityCard: View {
    let activity: Activity

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(activity.category.rawValue.uppercased())
                .font(.caption)
                .fontWeight(.semibold)
                .foregroundStyle(.secondary)

            Text(activity.title)
                .font(.headline)

            Text(activity.summary)
                .font(.subheadline)
                .foregroundStyle(.secondary)

            HStack {
                Label(activity.neighborhood, systemImage: "mappin.and.ellipse")
                Spacer()
                Label("\(activity.durationMinutes) min", systemImage: "clock")
            }
            .font(.caption)
            .foregroundStyle(.secondary)
        }
        .padding(.vertical, 6)
    }
}
