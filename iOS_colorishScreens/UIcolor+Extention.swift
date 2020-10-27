//
//  UIcolor+Extention.swift
//  iOS_colorishScreens
//
//  Created by Abdelrady on 10/25/20.
//  Copyright © 2020 Abdelrady. All rights reserved.
//

import UIKit

extension UIColor {
    static func random() -> UIColor
    {
        let color = UIColor(red: CGFloat.random(in: 0.0 ... 1.0),
                            green: CGFloat.random(in: 0.0 ... 1.0),
                            blue: CGFloat.random(in: 0.0 ... 1.0),
                            alpha: 1.0)
        return color
    }
}
