//
//  GradientBackground.swift
//  frontend-ios
//
//  Created by Liam Westby on 4/15/18.
//  Copyright © 2018 IBM. All rights reserved.
//

import UIKit

class GradientBackground: UIView {
    var gradientColors: [CGColor]
    
    override public class var layerClass: Swift.AnyClass {
        return CAGradientLayer.self
    }
    
    init(frame: CGRect, colors: [CGColor]) {
        print("init frame: \(frame)")
        gradientColors = colors
        
        super.init(frame: frame)
        
        guard let gradientLayer = self.layer as? CAGradientLayer else { return }
        gradientLayer.colors = gradientColors
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented in GradientBackground")
    }
}
