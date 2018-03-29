
import XCTest

extension XCUIApplication {
    var isDisplayingAlbumesView: Bool {
        return otherElements["albumesView"].exists
    }
}
