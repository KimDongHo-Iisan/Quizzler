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
    // q,a로 간단하게 변경해주었다.
    let quiz = [
        Question(q: "A slug's blood is green.", a: "True"),
        Question(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
        Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
        Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
        Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
        Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
        Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
        Question(q: "Google was originally called 'Backrub'.", a: "True"),
        Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
        Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
        Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
        Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")
        
    ]
    
    var questionNumber = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        let actualAnswer = quiz[questionNumber].answer // 실제 답
        
        if userAnswer == actualAnswer {
            sender.backgroundColor = UIColor.green // 옳은 답을 하면 버튼의 색이 초록색
        } else {
            sender.backgroundColor = UIColor.red // 잘못되면 빨간색
        }
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
        
        updateUI()
    }
    
    //현재 저 코드로는 실행을 하고 나면, 버튼의 색이 변한 이후에 다시 원래 색으로 돌아오지를 않아서 정답인지 아닌지를 구별하기가 어렵다.
    func updateUI() {
        questionLabel.text = quiz[questionNumber].text
        //버튼을 누른 후에 색깔이 원래대로 돌아오게 해야한다.
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear //-->  하지만 이렇게 코드를 짜면, 이제는 색깔이 표시되지 않는다. 
        
    }
}

