@testable import ActionsErrorDemo

import XCTest

final class ActionsErrorDemoTests: XCTestCase {
    func testResourceAccess() {
        if let url = Bundle.module.url(forResource: "image", withExtension: "png") {
            print(url)
        } else {
            print("didn't find image.png")
        }
    }
}
