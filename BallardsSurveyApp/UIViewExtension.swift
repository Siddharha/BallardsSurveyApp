//
//  UIViewExtension.swift
//  BallardsSurveyApp
//
//  Created by Parthib Biswas on 09/03/18.
//  Copyright © 2018 Parthib Biswas. All rights reserved.
//

import UIKit

enum borderDirectionEnum {
    case top
    case right
    case bot
    case left
}

// I HAVE TO REDO THIS PART
extension UIView {
    func addBorder(borderDirection: borderDirectionEnum, borderWidth: CGFloat, borderColor: UIColor) {
        
        let borderView = UIView()
        
        borderView.backgroundColor = borderColor
        
        switch borderDirection {
        case .bot:
            borderView.frame = CGRect(x: 0, y: self.frame.height - borderWidth, width: self.frame.width, height: borderWidth)
            self.addSubview(borderView)
        case .top:
            borderView.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: borderWidth)
            self.addSubview(borderView)
        case .right:
            borderView.frame = CGRect(x: (self.frame.width - borderWidth), y: 0, width: borderWidth, height: self.frame.height)
            self.addSubview(borderView)
        
        case .left:
            borderView.frame = CGRect(x: 0, y: 0, width: borderWidth, height: self.frame.height)
            self.addSubview(borderView)
        }
    }
}
