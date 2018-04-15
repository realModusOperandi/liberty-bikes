//
//  TitleLabel.swift
//  frontend-ios
//
//  Created by Liam Westby on 4/14/18.
//  Copyright © 2018 IBM. All rights reserved.
//

import UIKit

class TitleLabel: UILabel {

    @IBInspectable open var letterSpacing: CGFloat = 1 {
        didSet {
            let attributedString = NSMutableAttributedString(string: self.text!)
            attributedString.addAttribute(.kern, value: self.letterSpacing, range: NSRange(location: 0, length: attributedString.length))
            self.attributedText = attributedString
        }
        
    }

}
