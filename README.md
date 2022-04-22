# Tennis

## About The Project

A simple tennis game with unit test.

### Build With

[Swift](https://docs.swift.org/)

## Test Cases

```swift

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

```

## License

[WTFPL](http://www.wtfp)
