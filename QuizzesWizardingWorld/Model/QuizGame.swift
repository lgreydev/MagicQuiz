//
//  QuizGame.swift
//  QuizzesWizardingWorld
//
//  Created by Sergey Lukaschuk on 01.07.2021.
//

import Foundation


class QuizGame {
    
//    private var life: Int = 5
    var round: Int = 0
    var nextQuiz: Bool = false
    
    let quizzes = [Quiz.snape]

    func currentLevel() -> String {
        switch round {
        case 1: return "Round: 1️⃣"
        case 2: return "Round: 2️⃣"
        case 3: return "Round: 3️⃣"
        default: return "Round: 0️⃣"
        }
    }
    
    /*
    func currentLife() -> String {
        var result = "Life: "
        for _ in 0..<life {
            result += "❤️"
        }
        return result
    }
    
    func statusLife() {
        life -= 1
    }
    
 */
 
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
