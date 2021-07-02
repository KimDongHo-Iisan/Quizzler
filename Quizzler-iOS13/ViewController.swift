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
    
    //여러개의 퀴즈를 만들기 위해 배열을 생성
    let quiz = [
        "Four + Two is equal to Six.",
        "Five - Three is greater than One",
        "Three + Eight is less than Ten"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = "Four + Two is equal to Six"
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
    }
    
}

