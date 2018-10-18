//
//  OnboardViewController.swift
//  Pytch
//
//  Created by Rinat Enikeev on 18/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import UIKit

class OnboardViewController: UIPageViewController {
    var output: OnboardViewOutput!
    
    // private
    private var onboardPage1: OnboardPage1ViewController!
    private var onboardPage2: OnboardPage2ViewController!
    private var onboardPage3: OnboardPage3ViewController!
}

// MARK: - OnboardViewInput
extension OnboardViewController: OnboardViewInput {
    func navigate(to page: OnboardPage, animated: Bool) {
        switch page {
        case .page1:
            setViewControllers([onboardPage1], direction: .forward, animated: animated, completion: nil)
        case .page2:
            setViewControllers([onboardPage2], direction: .forward, animated: animated, completion: nil)
        case .page3:
            setViewControllers([onboardPage3], direction: .forward, animated: animated, completion: nil)
        }
    }
}

// MARK: - View lifecycle
extension OnboardViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        onboardPage1 = storyboard?.instantiateViewController(withIdentifier: "OnboardPage1ViewController") as? OnboardPage1ViewController
        onboardPage1.output = output
        onboardPage2 = storyboard?.instantiateViewController(withIdentifier: "OnboardPage2ViewController") as? OnboardPage2ViewController
        onboardPage2.output = output
        onboardPage3 = storyboard?.instantiateViewController(withIdentifier: "OnboardPage3ViewController") as? OnboardPage3ViewController
        onboardPage3.output = output
        setViewControllers([onboardPage1], direction: .forward, animated: false, completion: nil)
    }
}
