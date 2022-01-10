//
//  Protocol1.swift
//  IChat
//
//  Created by Георгий on 20.10.2021.
//

import UIKit


protocol SelfConfiguringCell {
    static var reuseId: String { get }
    func configure<U: Hashable>(with value: U)
}
