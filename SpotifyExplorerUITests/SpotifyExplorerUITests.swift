//
//  SpotifyExplorerUITests.swift
//  SpotifyExplorerUITests
//
//  Created by Behrad Kazemi on 1/15/20.
//  Copyright © 2020 BEKApps. All rights reserved.
//

import XCTest
@testable import NetworkPlatform
class SpotifyExplorerUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testLogin() {
        let app = XCUIApplication()
        app.launch()
//        app.buttons[]
        print("Salam")
    }

    func testLaunchPerformance() {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}
