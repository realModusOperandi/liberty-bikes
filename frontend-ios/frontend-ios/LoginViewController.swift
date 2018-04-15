//
//  LoginViewController.swift
//  frontend-ios
//
//  Created by Liam Westby on 4/15/18.
//  Copyright © 2018 IBM. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    var backgroundLayer = GradientBackground(frame: .zero, colors: [CGColor]())
    var titleView = UILabel()
    
    init() {
        super.init(nibName: nil, bundle: nil)
        
        backgroundLayer = createBackground()
        titleView = createTitle()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("Coder not implemented for LoginViewController")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.addSubview(backgroundLayer)
        view.addSubview(titleView)

        titleView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        titleView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 14).isActive = true
        titleView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        titleView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        
        updateFrames()
    }
    
    func updateFrames() {
        backgroundLayer.frame = view.frame
//        titleView.frame = view.frame
        
        // Set up title frame
//        titleView.frame.size = titleView.sizeThatFits(CGSize(width: view.bounds.width, height: CGFloat.greatestFiniteMagnitude))
//        titleView.frame.size.width = view.bounds.width
//        titleView.frame.origin = CGPoint(x: 15, y: view.bounds.height / 4)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillLayoutSubviews() {
        updateFrames()
    }
    
    func createBackground() -> GradientBackground {
        let gradientTop = UIColor(displayP3Red: 0.00, green: 0.00, blue: 0.11, alpha: 1.0)
        let gradientMiddle = UIColor(displayP3Red: 0.01, green: 0.00, blue: 0.31, alpha: 1.0)
        let gradientBottom = UIColor(displayP3Red: 0.44, green: 0.00, blue: 0.40, alpha: 1.0)
        
        let colors = [
            gradientTop.cgColor as CGColor,
            gradientMiddle.cgColor as CGColor,
            gradientBottom.cgColor as CGColor
        ]
        
        return GradientBackground(frame: .zero, colors: colors)
    }
    
    func createTitle() -> UILabel {
        let title = UILabel()
        title.text = "liberty bikes"
        title.textColor = .white
        title.textAlignment = .center
        title.numberOfLines = 0
        
        // Make title spaced out
        let attributedString = NSMutableAttributedString(string: title.text!)
        attributedString.addAttribute(.kern, value: 20, range: NSRange(location: 0, length: attributedString.length))
        title.attributedText = attributedString
        
        // Make title small caps
        let systemFont = UIFont.systemFont(ofSize: 64.0, weight: .light)
        let smallCapsDesc = systemFont.fontDescriptor.addingAttributes([
            .featureSettings: [
                [
                    UIFontDescriptor.FeatureKey.featureIdentifier: kLowerCaseType,
                    UIFontDescriptor.FeatureKey.typeIdentifier: kUpperCaseSmallCapsSelector
                ]
            ]
        ])
        let font = UIFont(descriptor: smallCapsDesc, size: systemFont.pointSize)
        title.translatesAutoresizingMaskIntoConstraints = false
        title.font = font
        
        return title
        
    }

}
