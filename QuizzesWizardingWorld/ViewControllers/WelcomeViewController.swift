//
//  WelcomeViewController.swift
//  QuizzesWizardingWorld
//
//  Created by Sergey Lukaschuk on 28.06.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        .lightContent
    }
    
    @IBAction func myUnwindAction(unwindSegue: UIStoryboardSegue) {
        // Connect a Triggering Object to the Exit Control
    }
 
}

