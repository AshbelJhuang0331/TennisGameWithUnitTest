//
//  TennisTests.swift
//  TennisTests
//
//  Created by Chuan-Jie Jhuang on 2022/4/20.
//

import XCTest
@testable import Tennis

class TennisTests: XCTestCase {

    let tennis = Tennis()
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

//    func testPerformanceExample() throws {
//        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
//    }
    
    // MARK: - Test Cases
    
    func testLoveAll() {
        scoreShouldBe(expected: "love all")
    }
    
    func testFifteenLove() {
        givenFirstPlayerTimes(1)
        scoreShouldBe(expected: "fifteen love")
    }
    
    func testThirtyLove() {
        givenFirstPlayerTimes(2)
        scoreShouldBe(expected: "thirty love")
    }
    
    func testFortyLove() {
        givenFirstPlayerTimes(3)
        scoreShouldBe(expected: "forty love")
    }
    
    func testLoveFifteen() {
        givenSecondPlayerTimes(1)
        scoreShouldBe(expected: "love fifteen")
    }
    
    func testLoveThirty() {
        givenSecondPlayerTimes(2)
        scoreShouldBe(expected: "love thirty")
    }
    
    func testLoveForty() {
        givenSecondPlayerTimes(3)
        scoreShouldBe(expected: "love forty")
    }
    
    func testFifteenAll() {
        givenFirstPlayerTimes(1)
        givenSecondPlayerTimes(1)
        scoreShouldBe(expected: "fifteen all")
    }
    
    func testThirtyAll() {
        givenFirstPlayerTimes(2)
        givenSecondPlayerTimes(2)
        scoreShouldBe(expected: "thirty all")
    }
    
    func testDeuce() {
        givenDeuce()
        scoreShouldBe(expected: "deuce")
    }
    
    func testFirstPlayerAdv() {
        givenDeuce()
        givenFirstPlayerTimes(1)
        scoreShouldBe(expected: "Federer adv")
    }
    
    func testSecondPlayerAdv() {
        givenDeuce()
        givenSecondPlayerTimes(1)
        scoreShouldBe(expected: "Nadal adv")
    }
    
    func testFirstPlayerWin() {
        givenFirstPlayerTimes(4)
        scoreShouldBe(expected: "Federer win")
    }

    func testSecondPlayerWin() {
        givenSecondPlayerTimes(4)
        scoreShouldBe(expected: "Nadal win")
    }
    
    func testFirstPlayerWinAfterDeuce() {
        givenDeuce()
        givenFirstPlayerTimes(2)
        scoreShouldBe(expected: "Federer win")
    }
    
    func testSecondPlayerWinAfterDeuce() {
        givenDeuce()
        givenSecondPlayerTimes(2)
        scoreShouldBe(expected: "Nadal win")
    }
    
    func testFirstPlayerWinAfterLongGame() {
        givenDeuce()
        givenFirstPlayerTimes(1)
        givenSecondPlayerTimes(1)
        givenFirstPlayerTimes(1)
        givenSecondPlayerTimes(1)
        givenFirstPlayerTimes(2)
        scoreShouldBe(expected: "Federer win")
    }
    
    func testSecondPlayerWinAfterLongGame() {
        givenDeuce()
        givenFirstPlayerTimes(1)
        givenSecondPlayerTimes(1)
        givenFirstPlayerTimes(1)
        givenSecondPlayerTimes(1)
        givenSecondPlayerTimes(2)
        scoreShouldBe(expected: "Nadal win")
    }
    
    // MARK: - Private Method
    
    private func scoreShouldBe(expected: String) {
        XCTAssertEqual(expected, tennis.score())
    }

    private func givenFirstPlayerTimes(_ times: Int) {
        for _ in 0..<times {
            tennis.addsFirstPlayerScore()
        }
    }
    
    private func givenSecondPlayerTimes(_ times: Int) {
        for _ in 0..<times {
            tennis.addsSecondPlayerScore()
        }
    }
    
    private func givenDeuce() {
        givenFirstPlayerTimes(3)
        givenSecondPlayerTimes(3)
    }
}
