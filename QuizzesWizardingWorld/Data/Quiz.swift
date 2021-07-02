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
    let result: Results
    let question: [Question]
    let answer: [[Answer]]
    
    static let snape = Quiz(
        title: "How well do you remember Snape's Philosopher's Stone speech?",
        image: "snape",
        description: "The speech that Snape gave in Harry’s first Potions lesson was certainly memorable. But can you recall exactly what he said in the Philosopher’s Stone film? Take our quiz and find out… good luck!",
        result: Results(
            positive: "You’ve Slytherin-d to the top spot! Snape would be proud… even if he wouldn't admit it... ",
            negative: "You clearly don’t appreciate the subtle science and exact art of Snape quizzes!"),
        question: [
            Question(text: "There will be no foolish wand-waving or silly _____ in this class."),
            Question(text: "I don’t expect many of you to appreciate the ______and exact art that is potion making."),
            Question(text: "I can teach you how to bewitch the mind and ______"),
            Question(text: "I can tell you how to bottle fame, brew ______ and even put a stopper in death"),
            Question(text: "Maybe some of you have come to Hogwarts in possession of abilities so formidable that you feel confident enough to ______"),
            Question(text: "Mr Potter, our new ______"),
            Question(text: "Tell me, what would I get if I added powdered root of asphodel to ______?"),
            Question(text: "Where, Mr Potter, would you look if I asked you to find me ______?"),
            Question(text: "And what is the difference between ______ and wolfsbane?"),
            Question(text: "Pity, clearly ______ isn’t everything – is it, Mr Potter?")
        ],
        answer: [
            [
                Answer(text: "Chantings", truthOrLie: false),
                Answer(text: "Spells", truthOrLie: false),
                Answer(text: "Enchantments", truthOrLie: false),
                Answer(text: "Incantations", truthOrLie: true),
            ].shuffled(),
            [
                Answer(text: "Delicate deductions", truthOrLie: false),
                Answer(text: "Refined reasoning", truthOrLie: false),
                Answer(text: "Curious chemistry", truthOrLie: false),
                Answer(text: "Subtle science", truthOrLie: true),
            ].shuffled(),
            [
                Answer(text: "Change a person's being", truthOrLie: false),
                Answer(text: "Confuse the senses", truthOrLie: false),
                Answer(text: "Control the body", truthOrLie: false),
                Answer(text: "Ensnare the senses", truthOrLie: true),
            ].shuffled(),
            [
                Answer(text: "Brilliance", truthOrLie: false),
                Answer(text: "Influence", truthOrLie: false),
                Answer(text: "Power", truthOrLie: false),
                Answer(text: "Glory", truthOrLie: true),
            ].shuffled(),
            [
                Answer(text: "Create any potion", truthOrLie: false),
                Answer(text: "Not listen", truthOrLie: false),
                Answer(text: "Ignore my words", truthOrLie: false),
                Answer(text: "Not pay attention", truthOrLie: true),
            ].shuffled(),
            [
                Answer(text: "Superstar", truthOrLie: false),
                Answer(text: "Hero", truthOrLie: false),
                Answer(text: "Icon", truthOrLie: false),
                Answer(text: "Celebrity", truthOrLie: true),
            ].shuffled(),
            [
                Answer(text: "Essence of Murtlap", truthOrLie: false),
                Answer(text: "Tincture of Demiguise", truthOrLie: false),
                Answer(text: "Essence of Rue", truthOrLie: false),
                Answer(text: "An infusion of wormwood", truthOrLie: true),
            ].shuffled(),
            [
                Answer(text: "A Sopophorous Bean", truthOrLie: false),
                Answer(text: "Gillyweed", truthOrLie: false),
                Answer(text: "Horn of a Bicorn", truthOrLie: false),
                Answer(text: "A bezoar", truthOrLie: true),
            ].shuffled(),
            [
                Answer(text: "Belladonna", truthOrLie: false),
                Answer(text: "Knotgrass", truthOrLie: false),
                Answer(text: "Fluxweed", truthOrLie: false),
                Answer(text: "Monkshood", truthOrLie: true),
            ].shuffled(),
            [
                Answer(text: "Intelligence", truthOrLie: false),
                Answer(text: "Talent", truthOrLie: false),
                Answer(text: "Stardom", truthOrLie: false),
                Answer(text: "Fame", truthOrLie: true),
            ].shuffled()
        ])
}



