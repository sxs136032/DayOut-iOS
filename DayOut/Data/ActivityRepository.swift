protocol ActivityRepository: Sendable {
    func activities() async throws -> [Activity]
}
