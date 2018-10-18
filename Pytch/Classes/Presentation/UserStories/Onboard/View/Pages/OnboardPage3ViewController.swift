//
//  OnboardPage3ViewController.swift
//  Pytch
//
//  Created by Rinat Enikeev on 18/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import UIKit

class OnboardPage3ViewController: UIViewController {
    var output: OnboardPage3ViewOutput!
    
    @IBAction func finishButtonTouchUpInside(_ sender: Any) {
        output.finishFromPage3()
    }
}
