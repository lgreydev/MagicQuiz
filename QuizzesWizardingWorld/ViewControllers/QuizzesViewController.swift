//
//  QuizzesViewController.swift
//  QuizzesViewController
//
//  Created by Sergey Lukaschuk on 29.06.2021.
//

import UIKit

class QuizzesViewController: UIViewController {

    // MARK: - IBOutlet
    @IBOutlet weak var lifeLabel: UILabel!
    @IBOutlet weak var levelLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var backGround: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet var answersButton: [UIButton]!
    @IBOutlet weak var progressView: UIProgressView!
    
    @IBOutlet weak var contentSV: UIStackView!
    
    var game = QuizGame()
    var firstIndex = 0
    var secondIndex = 0
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        backGround.image = UIImage(named: game.quizzes[firstIndex].image)
        DispatchQueue.main.asyncAfter(deadline: .now()+1) { self.animate() }
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        .lightContent
    }
    
    
    // MARK: - Private Methods
    private func updateUI() {
        levelLabel.text = game.currentLevel()
        lifeLabel.text = game.currentLife()
        answersButton.forEach { $0.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1) }
        titleLabel.text = game.quizzes[firstIndex].title
        descriptionLabel.text = game.quizzes[firstIndex].description
        questionLabel.text = game.quizzes[firstIndex].question[secondIndex].text
        answers()
    }
    
    private func answers() {
        var count = 0
        for button in answersButton {
            button.setTitle(game.quizzes[firstIndex].answer[secondIndex][count].text, for: .normal)
            count += 1
        }
    }
    
    private func animate() {
        self.updateUI()
        UIView.animate(withDuration: 2) {
            self.contentSV.alpha = 1
        }
    }
    
    
    // MARK: - IBAction
    @IBAction func actionButton(_ sender: UIButton) {
        //var answer = [(String, String)]()
        if game.quizzes[firstIndex].answer[secondIndex][sender.tag].truthOrLie == true {
            sender.backgroundColor = .green
        } else {
            sender.backgroundColor = .red
            game.statusLife()
        }
        
        secondIndex += 1
        
        DispatchQueue.main.asyncAfter(deadline: .now()+1) {
            self.updateUI()
        }

    }
}


//let emojiArray = ["🥵", "🥶", "😎", "😱", "😡"]
//let strArray = ["Hot", "Cold", "Good"]
//var newArray = [(String, String)]()
//
//for value in zip(emojiArray, strArray) {
//    newArray.append(value)
//}
// [("🥵", "Hot"), ("🥶", "Cold"), ("😎", "Good")] // Array of Tuple
