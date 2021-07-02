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
    
    var questionNumber = 0 // 버튼을 눌렀을때, 퀴즈가 다음으로 넘어가게 하기 위해서, 배열 번호를 동적으로 움직이게 해줄 변수를 생성
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = quiz[0] //앱을 실행했을때, 첫번째 질문이 출력되도록 함.
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
            questionNumber += 1 // 버튼을 누르면 번호가 1씩 증가하도록 함. -> 하지만 이렇게 코드를 짜면 숫자는 증가하지 않음.
        // 이유는 viewDidLoad는 처음 실행할때만 코드가 움직이는 곳이기 때문에, quiz[0]에서 멈춰있게 됨.
        // 해서 updateUi()를 사용해준다.
    }
    
}

