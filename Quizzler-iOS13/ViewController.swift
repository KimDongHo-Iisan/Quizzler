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
    
    // 참,거짓을 확인하기 위해, 2차원 배열로 변경
    let quiz = [
        ["Four + Two is equal to Six.","True"],
        ["Five - Three is greater than One","False"],
        ["Three + Eight is less than Ten","False"],
    ]
    
    var questionNumber = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle // 사용자가 고른 답 -> 현재 누른 버튼
        let actualAnswer = quiz[questionNumber][1] // 실제 답은 2차원 배열의 2번째에 있는 문자열이 답
        
        if userAnswer == actualAnswer { // 사용자가 고른 답과 실제 답이 맞다면,
            print("Right") //참을 출력
        } else {
            print("Wrong") // 아니면 거짓
        }
        
        if questionNumber < quiz.count {
            questionNumber += 1
        }

        updateUI()
    }
    
    func updateUI() {
        questionLabel.text = quiz[questionNumber][0] //[0]을 붙여줘야 질문에 접근할수 있음.
    }
}

