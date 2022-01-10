//
//  Navigation.swift
//  IChat
//
//  Created by Георгий Попандопуло on 23.11.2021.
//

import Foundation


protocol AuthNavigatingDelegate: AnyObject {
    func toLoginVC()
    func toSignUpVC()
}
