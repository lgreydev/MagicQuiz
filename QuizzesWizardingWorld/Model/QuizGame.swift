//
//  QuizGame.swift
//  QuizzesWizardingWorld
//
//  Created by Sergey Lukaschuk on 01.07.2021.
//

import Foundation


class QuizGame {
    
    var nextQuiz: Bool = false
    let quizzes = [Quiz.snape, Quiz.mcgonagall, Quiz.magicalObjects]

    func currentLevel(_ index: Int) -> String {
        switch index {
        case 1: return "Level: 1️⃣"
        case 2: return "Level: 2️⃣"
        case 3: return "Level: 3️⃣"
        default: return "Level: 0️⃣"
        }
    }
 
    func result(score: Int, quiz index: Int, question count: Int) -> String {
        if score > Int(Double(count) / 1.4) {
            nextQuiz = true
            return quizzes[index].result.positive
        } else {
            nextQuiz = false
            return quizzes[index].result.negative
        }
    }
}
