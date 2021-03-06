//
//  UIButton.swift
//  Bhagavad Gita
//
//  Created by Deepak Dewani on 14/10/17.
//  Copyright © 2017 Deepak Kumar Dewani. All rights reserved.
//

import UIKit
import  Device
extension UIButton {
    
    // method to set font for the given button
    func font(size: Int, type: FontType, family: FontFamily) {
        
        if type.rawValue == "" {
            switch Device.size() {
                
            case .screen4Inch:
                self.titleLabel?.font = UIFont(name: "\(family.rawValue)", size: CGFloat(size - 4))
                
            case .screen4_7Inch:
                self.titleLabel?.font = UIFont(name: "\(family.rawValue)", size: CGFloat(size - 2))
                
            case .screen5_5Inch:
                self.titleLabel?.font = UIFont(name: "\(family.rawValue)", size: CGFloat(size))
                
            default:
                print("Unknown size")
            }
        }
        else {
            switch Device.size() {
                
            case .screen4Inch:
                self.titleLabel?.font = UIFont(name: "\(family.rawValue)-\(type.rawValue)", size: CGFloat(size - 4))
                
            case .screen4_7Inch:
                self.titleLabel?.font = UIFont(name: "\(family.rawValue)-\(type.rawValue)", size: CGFloat(size - 2))
                
            case .screen5_5Inch:
                self.titleLabel?.font = UIFont(name: "\(family.rawValue)-\(type.rawValue)", size: CGFloat(size))
                
            default:
                print("Unknown size")
            }
        }
    }
}
