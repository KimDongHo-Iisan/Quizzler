//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Dongho kim on 2021/07/04.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    // 이니셜 라이저를 이용해서 데이터의 이름을 더 간단히 변경할수 있다.
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
