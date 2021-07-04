//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Dongho kim on 2021/07/04.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
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
    
    //퀴즈 배열의 번호를 추적하기 위해 이쪽으로 이동
    var questionNumber = 0
    
    //퀴즈의 정답이 맞는지 확인하는 메소드를 생성
    //스위프트는 외부 매개 변수와 내부 매개변수를 가질수 있다. 외부에서 사용하는 변수와 내부에서 사용하는 변수가 동일 또는 외부 변수가 필요가 없을시에는 _을 앞에 붙여주면 된다.
    func checkAnswer(_ userAnswer: String) {
        if userAnswer == quiz[questionNumber].answer { 
            //user got it right
        } else {
            //user got it wrong
        }
    }
}
