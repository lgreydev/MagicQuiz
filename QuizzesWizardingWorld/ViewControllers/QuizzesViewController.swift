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
    @IBOutlet weak var roundLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var backGround: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet var answersButton: [UIButton]!
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var contentSV: UIStackView!
    
    
    // MARK: - Private Properties
    var game = QuizGame()
    var firstIndex = 0
    var secondIndex = 0
    var score = 0
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        updateBackground()
        DispatchQueue.main.asyncAfter(deadline: .now()+0.5) { self.animate() }
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        .lightContent
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let resultVC = segue.destination as? ResultViewController {
            
            resultVC.image = UIImage(named: game.quizzes[firstIndex].image)
            let count = game.quizzes[firstIndex].answer.count
            resultVC.result = game.result(score: score, quiz: firstIndex, question: count)
            resultVC.score = score
            resultVC.countQuestions = game.quizzes[firstIndex].answer.count
            resultVC.nextQuiz = game.nextQuiz
            resultVC.firstIndex = firstIndex
            
            resultVC.dataClosure = { [weak self] value in
                self?.firstIndex += value
                self?.secondIndex = 0
                self?.score = 0
                self?.updateBackground()
                self?.contentSV.alpha = 0
                DispatchQueue.main.asyncAfter(deadline: .now()+0.5) { self?.animate() }
            }
        }
    }
    
    
    // MARK: - Private Methods
    
    func updateBackground() {
        backGround.image = UIImage(named: game.quizzes[firstIndex].image)
    }
    
    func animate() {
        self.updateUI()
        UIView.animate(withDuration: 2) { self.contentSV.alpha = 1 }
    }
    
    private func updateUI() {
        roundLabel.text = game.currentLevel(firstIndex)
        titleLabel.text = game.quizzes[firstIndex].title
        descriptionLabel.text = game.quizzes[firstIndex].description
        updateProgress()
        nextQuestion()
    }
    
    private func answers() {
        var count = 0
        for button in answersButton {
            button.setTitle(game.quizzes[firstIndex].answer[secondIndex][count].text, for: .normal)
            count += 1
        }
    }
    
    private func buttonOff() {
        answersButton.forEach { button in
            button.isEnabled = false
        }
    }
    
    private func buttonOn() {
        answersButton.forEach { button in
            button.isEnabled = true
        }
    }
    
    private func updateProgress() {
        let value = Float(secondIndex) / 10.0
        progressView.setProgress(value, animated: true)
        counterLabel.text = "\(secondIndex) / \(game.quizzes[firstIndex].answer.count)"
    }
    
    private func nextQuestion() {
        if secondIndex ==  game.quizzes[firstIndex].answer.count {
            DispatchQueue.main.asyncAfter(deadline: .now()+0.5) { [self] in
                self.performSegue(withIdentifier: "resultVC", sender: nil)
            }
        } else {
            questionLabel.text = game.quizzes[firstIndex].question[secondIndex].text
            answersButton.forEach { $0.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1) }
            answers()
        }
    }
    
    
    // MARK: - IBAction
    @IBAction func actionButton(_ sender: UIButton) {
        if game.quizzes[firstIndex].answer[secondIndex][sender.tag].truthOrLie == true {
            sender.backgroundColor = .green
            buttonOff()
            secondIndex += 1
            score += 1
        } else {
            sender.backgroundColor = .red
            buttonOff()
            secondIndex += 1
        }
        DispatchQueue.main.asyncAfter(deadline: .now()+1) {
            self.updateUI()
            self.buttonOn()
        }
    }
}


