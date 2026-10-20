import XCTest
@testable import DayOut

@MainActor
final class ExploreModelTests: XCTestCase {
    func testLoadPopulatesActivities() async {
        let model = ExploreModel(repository: MockActivityRepository())

        await model.load()

        XCTAssertEqual(model.activities.count, 4)
        XCTAssertNil(model.errorMessage)
        XCTAssertFalse(model.isLoading)
    }
}
