//
//  Quiz.swift
//  QuizzesWizardingWorld
//
//  Created by Sergey Lukaschuk on 01.07.2021.
//

import Foundation


struct Quiz {
    let title: String
    let image: String
    let description: String
    let question: [Question]
    let answer: [[Answer]]
    
    static let snape = Quiz(
        title: "How well do you remember Snape's Philosopher's Stone speech?",
        image: "snape",
        description: "The speech that Snape gave in Harry’s first Potions lesson was certainly memorable. But can you recall exactly what he said in the Philosopher’s Stone film? Take our quiz and find out… good luck!",
        question: [
            Question(text: "There will be no foolish wand-waving or silly _____ in this class."),
            Question(text: "I don’t expect many of you to appreciate the ______and exact art that is potion making.")
        ],
        answer: [
            [
                Answer(text: "Chantings", truthOrLie: false),
                Answer(text: "Spells", truthOrLie: false),
                Answer(text: "Enchantments", truthOrLie: false),
                Answer(text: "Incantations", truthOrLie: true),
            ],
            [
                Answer(text: "Subtle science", truthOrLie: true),
                Answer(text: "Refined reasoning", truthOrLie: false),
                Answer(text: "Curious chemistry", truthOrLie: false),
                Answer(text: "Delicate deductions", truthOrLie: false),
            ]
        ])
}



