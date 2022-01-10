//
//  UserError.swift
//  IChat
//
//  Created by Георгий Попандопуло on 30.11.2021.
//

import Foundation


enum UserError {
    case notFilled
    case photoNotExist
}


extension UserError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .notFilled:
            return NSLocalizedString("Заполните все поля", comment: "")
        case .photoNotExist:
            return NSLocalizedString("Пользователь не выбрал фотографию", comment: "")
        }
    }
}
