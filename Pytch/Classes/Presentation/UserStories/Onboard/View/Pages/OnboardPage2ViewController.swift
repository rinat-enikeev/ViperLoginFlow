//
//  OnboardPage2ViewController.swift
//  Pytch
//
//  Created by Rinat Enikeev on 18/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import UIKit

class OnboardPage2ViewController: UIViewController {
    var output: OnboardPage2ViewOutput!
    
    @IBAction func continueButtonTouchUpInside(_ sender: Any) {
        output.continueFromPage2()
    }
}
