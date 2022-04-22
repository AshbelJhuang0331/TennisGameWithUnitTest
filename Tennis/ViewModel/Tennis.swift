//
//  Tennis.swift
//  Tennis
//
//  Created by Chuan-Jie Jhuang on 2022/4/20.
//

import Foundation

class Tennis {
    
    let scoreLookUp: [Int: String] = [
        0: "love",
        1: "fifteen",
        2: "thirty",
        3: "forty"
    ]
    
    private var firstPlayerName: String = "Federer"
    private var firstPlayerScore: Int = 0
    private var secondPlayerName: String = "Nadal"
    private var secondPlayerScore: Int = 0
    
    // MARK: - Public Methods
    
    func score() -> String {
        if (firstPlayerScore != secondPlayerScore) {
            if (isReadyForGame()) {
                if (isAdv()) {
                    return advScore()
                }
                return winScore()
            }
            return lookUpScore()
        }
        if (isDeuce()) {
            return deuce()
        }
        return sameScore()
    }
    
    func addsFirstPlayerScore() {
        firstPlayerScore += 1
    }
    
    func addsSecondPlayerScore() {
        secondPlayerScore += 1
    }
    
    // MARK: - Private Methods
    
    private func isReadyForGame() -> Bool {
        return firstPlayerScore > 3 || secondPlayerScore > 3
    }
    
    private func isAdv() -> Bool {
        return firstPlayerScore >= 3 && secondPlayerScore >= 3 && abs(firstPlayerScore - secondPlayerScore) == 1
    }
    
    private func advScore() -> String {
        let advPlayerName = firstPlayerScore > secondPlayerScore ? firstPlayerName : secondPlayerName
        return advPlayerName + " adv"
    }
    
    private func winScore() -> String {
        let winPlayerName = firstPlayerScore > secondPlayerScore ? firstPlayerName : secondPlayerName
        return winPlayerName + " win"
    }
    
    private func lookUpScore() -> String {
        return "\(scoreLookUp[firstPlayerScore] ?? "") \(scoreLookUp[secondPlayerScore] ?? "")"
    }
    
    private func isDeuce() -> Bool {
        return firstPlayerScore >= 3 && secondPlayerScore >= 3 && firstPlayerScore == secondPlayerScore
    }
    
    private func deuce() -> String {
        return "deuce"
    }
    
    private func sameScore() -> String {
        return "\(scoreLookUp[firstPlayerScore] ?? "") all"
    }
}
