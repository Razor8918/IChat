//
//  UIImageView + Extension.swift
//  IChat
//
//  Created by Георгий on 27.09.2021.
//

import UIKit

extension UIImageView {
    
    convenience init(image: UIImage?, contentmode: UIView.ContentMode) {
        
        self.init()
        
        self.image = image
        self.contentMode = contentmode
    }
}
