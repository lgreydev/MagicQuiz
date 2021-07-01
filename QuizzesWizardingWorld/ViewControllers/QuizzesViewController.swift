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
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet var answersButton: [UIButton]!
    @IBOutlet weak var progressView: UIProgressView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        .lightContent
    }
    
    
    
    
}
