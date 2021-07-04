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
    
    // 2차원 배열의 복잡함을 구조체를 이용해서 간단한 코드로 변화 시켜주었다.
    let quiz = [
        Question(text: "Four + Two is equal to Six.", answer: "True"),
        Question(text: "Five - Three is greater than One", answer: "False"),
        Question(text: "Three + Eight is less than Ten", answer: "False")
    ]
    
    var questionNumber = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        let actualAnswer = quiz[questionNumber].answer // 실제 답
        
        if userAnswer == actualAnswer { // 사용자가 고른 답과 실제 답이 맞다면,
            print("Right") //참을 출력
        } else {
            print("Wrong") // 아니면 거짓
        }
        
        if questionNumber + 1 < quiz.count { // 퀴즈 번호가 퀴즈 배열의 개수보다 작으면
            questionNumber += 1 // 번호를 1 증가 -> 퀴즈번호 + 1을 해야 배열 3을 넘어가지 않게 할수 있다.
        } else {
            questionNumber = 0 // 아니라면 0으로 가서 처음부터 다시 시작하도록 함.
        }

        updateUI()
    }
    
    func updateUI() {
        questionLabel.text = quiz[questionNumber].text // 퀴즈의 질문
    }
}

