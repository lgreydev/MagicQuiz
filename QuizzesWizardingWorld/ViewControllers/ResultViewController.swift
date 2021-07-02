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
    }
    
    
    
    @IBAction func actionButton(_ sender: UIButton) {
        
    }
    
    
}
