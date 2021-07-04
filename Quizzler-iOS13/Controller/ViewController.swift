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
    
    var quizBrain = QuizBrain() // QuizBrain 복사본을 생성해서 viewController에서 사용할수 있게 함.
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle! //!을 붙여서 빈 값이 아니라는 것을 컴퓨터에 인식 시켜준다.
        quizBrain.checkAnswer(userAnswer) // quizBrain 내부에 있는 정답 찾는 메소드를 여기서 사용하는 것이다. 외부 매개변수를 사용하지 않았기 때문에 저 함수의 매개변수 값에 (userAnswer: userAnswer)가 줄여져 있는 것이다.
        
        if userAnswer == actualAnswer {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
        
        // 버튼의 색이 표시가 안되는것이 아니라, 색깔은 확실히 변화하고 있지만, 그 변화하는 시간이 상당히 짧아서 우리 눈에는 보이지 않는 것이다. 그렇기 때문에 timer를 이용해서 변화하는 시간 간격이 0.2초가 있도록 하고, 반복을 할 필요가 없기때문에, false, 또한 변화하지 않고, 한번만 실행 후 중지하는 타이머이기 때문에 변수로 저장할 필요도 없다.
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
    
    //objc를 사용하기 때문에 함수 앞에 objc
    @objc func updateUI() {
        questionLabel.text = quiz[questionNumber].text
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        //진행바 만들기
        progressBar.progress = Float(questionNumber + 1) / Float(quiz.count) // questionNumber + 1을 해줘야 진행바의 게이지가 끝까지 갈수 있다-> 배열의 첫번째 숫자는 0부터 시작하기 때문이다.
        
    }
}

