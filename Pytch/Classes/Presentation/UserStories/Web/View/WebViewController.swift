//
//  WebViewController.swift
//  Pytch
//
//  Created by Rinat Enikeev on 08/10/2018.
//  Copyright © 2018 Aparlay Limited. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController {

    var output: WebViewOutput!
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.load(URLRequest(url: URL(string: "https://yandex.ru/")!))
    }
}

extension WebViewController: WebViewInput {
    
}
