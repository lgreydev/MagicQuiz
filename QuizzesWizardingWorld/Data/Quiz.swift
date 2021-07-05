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
    
    static let mcgonagall = Quiz(
        title: "Complete the quote quiz: McGonagall edition",
        image: "mcgonagall",
        description: "Minerva McGonagall. Talented witch, inspiring teacher, and wordsmith extraordinaire. Can you finish these famous Professor McGonagall lines? ",
        result: Results(
            positive: "You’d be showing off your Prefect’s badge in no time with results this good.",
            negative: "You're a bright spark, keep working on your wandwork to reach another level-osa..."),
        question: [
            Question(text: "When I call your name, you will put on the hat and sit on the stool to be…"),
            Question(text: "Potter, this is Oliver Wood. Wood – I’ve found you a…"),
            Question(text: "Well, I still say you were lucky, but not many first-years could have taken on a full-grown mountain…"),
            Question(text: "Hogwarts is threatened!’ shouted Professor McGonagall. ‘Man the boundaries, protect us, do your duty to our…"),
            Question(text: "It’s high time your grandmother learned to be proud of the grandson she’s got, rather than the one she thinks she…?"),
            Question(text: "I wonder, said Professor McGonagall in cold fury, turning on Professor Umbridge, how you expect to gain an idea of my usual teaching methods if you"),
            Question(text: "Professor McGonagall sat down behind her desk, frowning at Harry. Then she said, Have a…"),
            Question(text: "You look in excellent health to me, Potter, so you will excuse me if I don’t let you off homework today. I assure you that if you die, you need not…"),
            Question(text: "The Yule Ball is of course a chance for us all to – er –…"),
            Question(text: "JORDAN! ARE YOU BEING PAID TO ADVERTISE…"),
            Question(text: "There is no need to say any more, Miss Granger. Tell me, which of you will be…"),
            Question(text: "Moody, we never use Transfiguration as a…"),
            Question(text: "Longbottom, kindly do not reveal that you can’t even perform a simple Switching Spell in front of anyone from…"),
            Question(text: "Professor Umbridge gave her most pronounced cough yet. “May I offer you a…"),
            Question(text: "We teachers are rather good at…"),
        ],
        answer: [
            [
                Answer(text: "tested", truthOrLie: false),
                Answer(text: "laughed at", truthOrLie: false),
                Answer(text: "vanished", truthOrLie: false),
                Answer(text: "sorted", truthOrLie: true),
            ].shuffled(),
            [
                Answer(text: "First Year", truthOrLie: false),
                Answer(text: "Survivor of the Killing Curs", truthOrLie: false),
                Answer(text: "Gryffindor", truthOrLie: false),
                Answer(text: "Seeker", truthOrLie: true),
            ].shuffled(),
            [
                Answer(text: "goat", truthOrLie: false),
                Answer(text: "dragon", truthOrLie: false),
                Answer(text: "lion", truthOrLie: false),
                Answer(text: "troll", truthOrLie: true),
            ].shuffled(),
            [
                Answer(text: "house", truthOrLie: false),
                Answer(text: "headmaster", truthOrLie: false),
                Answer(text: "cause", truthOrLie: false),
                Answer(text: "school", truthOrLie: true),
            ].shuffled(),
            [
                Answer(text: "wants", truthOrLie: false),
                Answer(text: "deserves", truthOrLie: false),
                Answer(text: "wishes was her son", truthOrLie: false),
                Answer(text: "ought to have", truthOrLie: true),
            ].shuffled(),
            [
                Answer(text: "torment me", truthOrLie: false),
                Answer(text: "distract me", truthOrLie: false),
                Answer(text: "cough at me", truthOrLie: false),
                Answer(text: "interrupt me", truthOrLie: true),
            ].shuffled(),
            [
                Answer(text: "Chocolate Frog, Potter", truthOrLie: false),
                Answer(text: "care, Potter", truthOrLie: false),
                Answer(text: "rest, Potter", truthOrLie: false),
                Answer(text: "biscuit, Potter", truthOrLie: true),
            ].shuffled(),
            [
                Answer(text: "lose Gryffindor house points", truthOrLie: false),
                Answer(text: "apologise to me", truthOrLie: false),
                Answer(text: "finish it", truthOrLie: false),
                Answer(text: "hand it in", truthOrLie: true),
            ].shuffled(),
            [
                Answer(text: "dance the night away", truthOrLie: false),
                Answer(text: "show off to the other schools", truthOrLie: false),
                Answer(text: "have some fun", truthOrLie: false),
                Answer(text: "let our hair down", truthOrLie: true),
            ].shuffled(),
            [
                Answer(text: "BROOMSTICKS", truthOrLie: false),
                Answer(text: "HARRY POTTER", truthOrLie: false),
                Answer(text: "GRYFFINDOR", truthOrLie: false),
                Answer(text: "FIREBOLTS", truthOrLie: true),
            ].shuffled(),
            [
                Answer(text: "leaving this year", truthOrLie: false),
                Answer(text: "failing Divination", truthOrLie: false),
                Answer(text: "expelled this year", truthOrLie: false),
                Answer(text: "dying this year", truthOrLie: true),
            ].shuffled(),
            [
                Answer(text: "surprise", truthOrLie: false),
                Answer(text: "teaching method", truthOrLie: false),
                Answer(text: "joke", truthOrLie: false),
                Answer(text: "punishment", truthOrLie: true),
            ].shuffled(),
            [
                Answer(text: "Beauxbatons", truthOrLie: false),
                Answer(text: "The Auror office", truthOrLie: false),
                Answer(text: "The Ministry", truthOrLie: false),
                Answer(text: "Durmstrang", truthOrLie: true),
            ].shuffled(),
            [
                Answer(text: "seat, Dolores?", truthOrLie: false),
                Answer(text: "piece of advice, Dolores?", truthOrLie: false),
                Answer(text: "tissue, Dolores?", truthOrLie: false),
                Answer(text: "cough drop, Dolores?", truthOrLie: true),
            ].shuffled(),
            [
                Answer(text: "spellwork, you know", truthOrLie: false),
                Answer(text: "defending ourselves, you know", truthOrLie: false),
                Answer(text: "Charms, you know", truthOrLie: false),
                Answer(text: "magic, you know", truthOrLie: true),
            ].shuffled(),
        ])
    
    static let magicalObjects = Quiz(
        title: "The Magical Objects",
        image: "magical-objects",
        description: "Do you know your Resurrection Stones from your Philosopher’s Stones? Or your Sneakoscopes from your Secrecy Sensors? Well, let’s find out in our latest quiz.",
        result: Results(
            positive: "Did Hagrid tell you the answers beforehand?",
            negative: "You’re right at the bottom of the Vault with these results"),
        question: [
            Question(text: "What colour does a Remembrall glow when you forget something?"),
            Question(text: "Which of these objects was NOT a Horcrux?"),
            Question(text: "Which character gave Harry a two-way mirror?"),
            Question(text: "When picking the students that will attend Hogwarts, that decision is made by an enchanted..."),
            Question(text: "When playing the giant version of Wizard Chess, what is Ron’s preferred piece?"),
            Question(text: "Which book is bequeathed to Hermione from Dumbledore’s will?"),
            Question(text: "What type of jewel is encrusted into the Sword of Gryffindor?"),
            Question(text: "Which of these is a popular Hogwarts game?")
        ],
        answer: [
            [
                Answer(text: "Green", truthOrLie: false),
                Answer(text: "Purple", truthOrLie: false),
                Answer(text: "Black", truthOrLie: false),
                Answer(text: "Red", truthOrLie: true),
            ].shuffled(),
            [
                Answer(text: "Hufflepuff's Cup", truthOrLie: false),
                Answer(text: "Ravenclaw's Diadem", truthOrLie: false),
                Answer(text: "Slytherin's Locke", truthOrLie: false),
                Answer(text: "The Sword of Gryffindor", truthOrLie: true),
            ].shuffled(),
            [
                Answer(text: "Remus Lupin", truthOrLie: false),
                Answer(text: "Albus Dumlbledore", truthOrLie: false),
                Answer(text: "Molly Weasley", truthOrLie: false),
                Answer(text: "Sirius Black", truthOrLie: true),
            ].shuffled(),
            [
                Answer(text: "Goblet of Fire", truthOrLie: false),
                Answer(text: "Sorting Hat", truthOrLie: false),
                Answer(text: "Piece of parchment", truthOrLie: false),
                Answer(text: "Quill and book", truthOrLie: true),
            ].shuffled(),
            [
                Answer(text: "Rook", truthOrLie: false),
                Answer(text: "King", truthOrLie: false),
                Answer(text: "Bishop", truthOrLie: false),
                Answer(text: "Knight", truthOrLie: true),
            ].shuffled(),
            [
                Answer(text: "Monster Book of Monsters", truthOrLie: false),
                Answer(text: "Hogwarts: A History", truthOrLie: false),
                Answer(text: "Secrets of the Darkest Art", truthOrLie: false),
                Answer(text: "The Tales of Beedle the Bard", truthOrLie: true),
            ].shuffled(),
            [
                Answer(text: "Diamonds", truthOrLie: false),
                Answer(text: "Emeralds", truthOrLie: false),
                Answer(text: "Sapphires", truthOrLie: false),
                Answer(text: "Rubies", truthOrLie: true),
            ].shuffled(),
            [
                Answer(text: "Jumping Gin Rummy", truthOrLie: false),
                Answer(text: "Paranoid Poker", truthOrLie: false),
                Answer(text: "Blow up Blackjack", truthOrLie: false),
                Answer(text: "Exploding Snap", truthOrLie: true),
            ].shuffled()
        ])
    
    
    static let deathEaters = Quiz(
        title: "The Death Eaters",
        image: "death-eaters",
        description: "Do you know your Rookwoods from your Rosiers? Take this quiz to see whether you would have what it takes to join Lord Voldemort’s inner circle.",
        result: Results(
            positive: "",
            negative: ""),
        question: [
            Question(text: "Where did Harry first see Death Eaters in the flesh?"),
            Question(text: ""),
            Question(text: ""),
            Question(text: ""),
            Question(text: ""),
            Question(text: ""),
            Question(text: ""),
            Question(text: ""),
            Question(text: ""),
            Question(text: "")
        ],
        answer: [
            [
                Answer(text: "Little Hangleton graveyard", truthOrLie: false),
                Answer(text: "Godric's Hollow", truthOrLie: false),
                Answer(text: "Malfoy Manor", truthOrLie: false),
                Answer(text: "The Quidditch World Cup", truthOrLie: true),
            ].shuffled(),
            [
                Answer(text: "", truthOrLie: false),
                Answer(text: "", truthOrLie: false),
                Answer(text: "", truthOrLie: false),
                Answer(text: "1", truthOrLie: true),
            ].shuffled(),
            [
                Answer(text: "", truthOrLie: false),
                Answer(text: "", truthOrLie: false),
                Answer(text: "", truthOrLie: false),
                Answer(text: "1", truthOrLie: true),
            ].shuffled(),
            [
                Answer(text: "", truthOrLie: false),
                Answer(text: "", truthOrLie: false),
                Answer(text: "", truthOrLie: false),
                Answer(text: "1", truthOrLie: true),
            ].shuffled(),
            [
                Answer(text: "", truthOrLie: false),
                Answer(text: "", truthOrLie: false),
                Answer(text: "", truthOrLie: false),
                Answer(text: "1", truthOrLie: true),
            ].shuffled(),
            [
                Answer(text: "", truthOrLie: false),
                Answer(text: "", truthOrLie: false),
                Answer(text: "", truthOrLie: false),
                Answer(text: "1", truthOrLie: true),
            ].shuffled(),
            [
                Answer(text: "", truthOrLie: false),
                Answer(text: "", truthOrLie: false),
                Answer(text: "", truthOrLie: false),
                Answer(text: "1", truthOrLie: true),
            ].shuffled(),
            [
                Answer(text: "", truthOrLie: false),
                Answer(text: "", truthOrLie: false),
                Answer(text: "", truthOrLie: false),
                Answer(text: "1", truthOrLie: true),
            ].shuffled(),
            [
                Answer(text: "", truthOrLie: false),
                Answer(text: "", truthOrLie: false),
                Answer(text: "", truthOrLie: false),
                Answer(text: "1", truthOrLie: true),
            ].shuffled(),
            [
                Answer(text: "", truthOrLie: false),
                Answer(text: "", truthOrLie: false),
                Answer(text: "", truthOrLie: false),
                Answer(text: "1", truthOrLie: true),
            ].shuffled()
        ])
}



