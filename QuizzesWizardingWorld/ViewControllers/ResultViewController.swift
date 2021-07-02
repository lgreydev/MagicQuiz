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
    @IBOutlet weak var resultLabel: UILabel!
    
    
    // MARK: - Public Properties
    var image: UIImage?
    var result: String?
    
    
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
            self.resultLabel.alpha = 1
        }
    }
    
    private func updateUI() {
        resultLabel.text = result
    }
}
