//
//  QuizGame.swift
//  QuizzesWizardingWorld
//
//  Created by Sergey Lukaschuk on 01.07.2021.
//

import Foundation


class QuizGame {
    
    private var life: Int = 5
    private var level: Int = 0
    
    let quizzes = [Quiz.snape]

    
    
    
    
    func currentLevel() -> String {
        switch level {
        case 1: return "Level: 1️⃣"
        case 2: return "Level: 2️⃣"
        default: return "Level: 0️⃣"
        }
    }
    
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
    
    
}
