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
    
    var game = QuizGame()
    var index = 0
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        .lightContent
    }
    
    
    func updateUI() {
        backGround.image = UIImage(named: game.quizzes[index].image)
        titleLabel.text = game.quizzes[index].title
        descriptionLabel.text = game.quizzes[index].description
        questionLabel.text = game.quizzes[index].question[index].text
        answers()
    }
    
    func answers() {
        var count = 0
        for button in answersButton {
            button.setTitle(game.quizzes[index].answer[index][count].text, for: .normal)
            count += 1
        }
    }
    
    
    
}
