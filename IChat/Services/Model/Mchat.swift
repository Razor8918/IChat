//
//  Mchat.swift
//  IChat
//
//  Created by Георгий on 21.10.2021.
//

import UIKit

struct Mchat: Hashable, Decodable {
    var username: String
    var userImageString: String
    var lastMessage: String
    var id: Int
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    static func == (lhs:Mchat, rhs: Mchat) -> Bool {
        return lhs.id == rhs.id
    }
}
