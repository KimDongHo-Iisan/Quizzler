//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    
    let quiz = [
        "Four + Two is equal to Six.",
        "Five - Three is greater than One",
        "Three + Eight is less than Ten"
    ]
    
    var questionNumber = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        questionNumber += 1
        updateUI()
    }
    
    func updateUI() {
        questionLabel.text = quiz[questionNumber]
    }
}

// 현재 이 코드로는 세번째 문제를 넘어가게 되면 앱이 충돌이 난다. 범위를 벗어났기 때문이다. 
