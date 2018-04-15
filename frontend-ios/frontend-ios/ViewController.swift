//
//  ViewController.swift
//  frontend-ios
//
//  Created by Liam Westby on 4/14/18.
//  Copyright © 2018 IBM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var loginVC = LoginViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginVC.view.frame = view.frame
        view.addSubview(loginVC.view)
    }
    
    override func viewWillLayoutSubviews() {
        loginVC.view.frame = view.frame
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }


}

