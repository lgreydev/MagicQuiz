//
//  ResultViewController.swift
//  QuizzesWizardingWorld
//
//  Created by Sergey Lukaschuk on 02.07.2021.
//

import UIKit

class ResultViewController: UIViewController {

    // MARK: - IBOutlet
    @IBOutlet weak var backGround: UIImageView!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var resultButton: UIButton!
    @IBOutlet weak var contentSV: UIStackView!
    
    
    // MARK: - Public Properties
    var image: UIImage?
    var result: String?
    var score: Int?
    var countQuestions: Int?
    var nextQuiz: Bool?
    var firstIndex: Int?
    
    typealias MyClosure = (Int) -> ()
    var dataClosure: MyClosure?
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        backGround.image = image
        DispatchQueue.main.asyncAfter(deadline: .now()+0.5) { self.animate() }
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        .lightContent
    }
    
    
    // MARK: - Private Methods
    private func animate() {
        self.updateUI()
        UIView.animate(withDuration: 2) {
            self.contentSV.alpha = 1
        }
    }
    
    private func updateUI() {
        resultLabel.text = result
        
        if let myScore = score {
            if let myCount = countQuestions {
                scoreLabel.text = "\(String(myScore)) / \(String(myCount))"
            }
        }
        
        if let myNextQuiz = nextQuiz {
            myNextQuiz ? resultButton.setTitle("Next Level", for: .normal) : resultButton.setTitle("Restart", for: .normal)
        }
    }
    
    
    @IBAction func actionButton(_ sender: UIButton) {
        
        print(#line, firstIndex)
        if firstIndex! > 0 {
            DispatchQueue.main.asyncAfter(deadline: .now()+0.5) { [self] in
                self.performSegue(withIdentifier: "winnerVC", sender: nil)
            }
        } else if let myNextQuiz = nextQuiz {
            myNextQuiz ? dataClosure?(1) : dataClosure?(0)
            dismiss(animated: true, completion: nil)
        }
    }
}
