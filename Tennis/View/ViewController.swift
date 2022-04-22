//
//  ViewController.swift
//  Tennis
//
//  Created by Chuan-Jie Jhuang on 2022/4/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var firstPlayerAddsScoreButton: UIButton!
    @IBOutlet weak var secondPlayerAddsScoreButton: UIButton!
    var tennis = Tennis()
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateScoreLabel()
    }

    // MARK: - Target Action
    
    @IBAction func firstPlayerAddsScoreButtonAction(_ sender: UIButton) {
        tennis.addsFirstPlayerScore()
        updateScoreLabel()
    }
    
    @IBAction func secondPlayerAddsScoreButtonAction(_ sender: UIButton) {
        tennis.addsSecondPlayerScore()
        updateScoreLabel()
    }
    
    @IBAction func resetButtonAction(_ sender: UIButton) {
        tennis = Tennis()
        updateScoreLabel()
    }
    
    // MARK: Private Method
    
    private func updateScoreLabel() {
        scoreLabel.text = tennis.score()
        if (tennis.score().contains("win")) {
            disableAllAddsScoreButtons()
        } else {
            enableAllAddsScoreButtons()
        }
    }
    
    private func disableAllAddsScoreButtons() {
        firstPlayerAddsScoreButton.isEnabled = false
        secondPlayerAddsScoreButton.isEnabled = false
    }
    
    private func enableAllAddsScoreButtons() {
        firstPlayerAddsScoreButton.isEnabled = true
        secondPlayerAddsScoreButton.isEnabled = true
    }
}

