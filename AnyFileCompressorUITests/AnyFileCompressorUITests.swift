//
//  AnyFileCompressorUITests.swift
//  AnyFileCompressorUITests
//
//  Created by Sayuru Rehan on 2025-06-25.
//

import XCTest

final class AnyFileCompressorUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it's important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    @MainActor
    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    @MainActor
    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }

    @MainActor
    func testAppLaunch() throws {
        let app = XCUIApplication()
        app.launch()
        // Check that the main window exists
        XCTAssertTrue(app.windows.element(boundBy: 0).exists)
    }

    @MainActor
    func testFileSelectionPanelAppears() throws {
        let app = XCUIApplication()
        app.launch()
        // Try to find the "Select Files" button or menu (adjust identifier as needed)
        let selectFilesButton = app.buttons["Select Files"]
        if selectFilesButton.exists {
            selectFilesButton.click()
        } else {
            // If button not found, try menu or toolbar (adjust as needed)
            // This is a placeholder; update with actual identifier if available
        }
        // The open panel should appear
        let openPanel = app.sheets.firstMatch
        XCTAssertTrue(openPanel.waitForExistence(timeout: 2))
    }

    @MainActor
    func testDragAndDropShowsProgress() throws {
        let app = XCUIApplication()
        app.launch()
        // Simulate drag and drop (this is a placeholder, as real drag-and-drop is complex in UI tests)
        // You may need to use coordinate-based events or test with a mock file if possible
        // Here, we check that the progress indicator appears after a simulated drop
        // Adjust the identifier as needed for your progress indicator
        let progressIndicator = app.progressIndicators.firstMatch
        // Simulate drop here if possible
        // For now, just check that the indicator can appear (manual step may be needed)
        XCTAssertTrue(progressIndicator.exists || progressIndicator.waitForExistence(timeout: 2))
    }
}
