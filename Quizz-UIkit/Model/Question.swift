//
//  Question.swift
//  Quizz-UIkit
//
//  Created by Francisco PG on 04/08/24.
//

import Foundation

struct Question {
    let text: String
    let answer: [String]
    let correctOption: String
    
    init(q: String, a: [String], correctAnswer: String) {
        text = q
        answer = a
        correctOption = correctAnswer
    }
    
}
