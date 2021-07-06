//
//  QuizGame.swift
//  QuizzesWizardingWorld
//
//  Created by Sergey Lukaschuk on 01.07.2021.
//

import Foundation


class QuizGame {
    
    // MARK: - Private Properties
    private(set) var nextQuiz: Bool = false
    private(set) var quizzes = [Quiz.magicalObjects, Quiz.snape, Quiz.mcgonagall, Quiz.deathEaters]

    
    // MARK: - Public Methods
    /// Determines the level of the current game
    /// - Parameter index: index current quiz
    /// - Returns: level with number
    func currentLevel(_ index: Int) -> String {
        switch index {
        case 1: return "Level: 1️⃣"
        case 2: return "Level: 2️⃣"
        case 3: return "Level: 3️⃣"
        default: return "Level: 0️⃣"
        }
    }
 
    /// Returns a positive or negative answer, in depending on the count of correct answers.
    /// - Parameters:
    ///   - score: number of positive answers
    ///   - index: index of quiz
    ///   - count: count questions
    /// - Returns: positive or negative answer
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
