//
//  UIColor + Extension.swift
//  IChat
//
//  Created by Георгий on 27.09.2021.
//

import UIKit

extension UIColor {
    
    static func buttonRed() -> UIColor {
        return UIColor(named: "buttonRed") ?? .red
    }
    static func mainWhite() -> UIColor {
        return UIColor(named: "mainWhite") ?? .white
    }
    static func buttonDark() -> UIColor {
        return UIColor(named: "buttonDark") ?? .black
    }
    static func textFieldLight() -> UIColor {
        return UIColor(named: "textFieldLight") ?? .gray
    }
    static func gradientColor() -> UIColor {
        return UIColor(named: "gradientColor") ?? .purple
    }
    static func gradientColor1() -> UIColor {
        return UIColor(named: "gradientColor1") ?? .blue
    }
    static func sectionHeader() -> UIColor {
        return UIColor(named: "sectionHeader") ?? .systemGray
    }
    static func shadowColor() -> UIColor {
        return UIColor(named: "shadowColor") ?? .systemCyan
    }
    static func denyColor() -> UIColor {
        return UIColor(named: "denyColor") ?? .systemRed
    }
}
