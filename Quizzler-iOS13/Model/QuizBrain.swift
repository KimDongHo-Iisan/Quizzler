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
    var score = 0 //score 변수를 생성.
    
    //퀴즈의 정답이 맞는지 확인하는 메소드를 생성
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 1 //정답을 맞췄을때 1증가 -> 구조체 내부에서 속성을 변경하는 것이기 때문에 mutating 키워드
            return true
        } else {
            return false
        }
    }
    
    func getScore() -> Int {
        return score
    }
    
    //퀴즈 내용 찾는 메소드
    func getQuestionText() -> String {
        return quiz[questionNumber].text // quiz 배열의 위치를 찾고, 그 위치에 있는 텍스트 속성을 반환한다.
    }
    
    //진행률 얻는 메소드
    func getProgress() -> Float {
        let progress = Float(questionNumber) / Float(quiz.count)
        return progress
    }
    
    //다음 문제로 넘어가기 위한 메소드
    //구조체 내부에서 속성을 변경하는 것이기 때문에 mutating 키워드를 사용
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0 // 다음 문제가 없으면 점수를 초기화
        }
        
    }
    
    
    
}
