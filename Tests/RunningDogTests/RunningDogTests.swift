import XCTest
@testable import RunningDog

class RunningDogTests: XCTestCase {
    func testExample() {
        var rd = RunningDog()
        rd.add(1)
        rd.add(2)
        rd.add(3)
        print(rd.mean)
        print(rd.variance)
        print(rd.maximum)
        print(rd.minimum)
        XCTAssertEqual(rd.mean, 2.0)
        XCTAssertEqual(rd.variance, 1.0)
        XCTAssertEqual(rd.maximum, 3.0)
        XCTAssertEqual(rd.minimum, 1.0)
    }


    static var allTests : [(String, (RunningDogTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
