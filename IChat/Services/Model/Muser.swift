//
//  Muser.swift
//  IChat
//
//  Created by Георгий on 21.10.2021.
//

import UIKit

struct Muser: Hashable, Decodable {
    var username: String
    var email: String
    var avatarStringURL: String
    var description: String
    var sex: String
    var id: String
    
    var representation: [String: Any] {
        var rep = ["username": username]
        rep["sex"] = sex
        rep["email"] = email
        rep["avatarStringURL"] = avatarStringURL
        rep["description"] = description
        rep["uid"] = id
        return rep
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    static func == (lhs:Muser, rhs: Muser) -> Bool {
        return lhs.id == rhs.id
    }
    
    func contains(filter: String?) -> Bool {
        guard let filter = filter else { return true }
        if filter.isEmpty { return true }
        let lowercasedFilter = filter.lowercased()
        return username.lowercased().contains(lowercasedFilter)
        }

    }
