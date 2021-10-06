//
//  ButtonFormView.swift
//  IChat
//
//  Created by Георгий on 28.09.2021.
//

import UIKit

class buttonFormView: UIView {
    
    init(label:UILabel, button:UIButton){
        
        super.init(frame: .zero)
        
        self.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(label)
        self.addSubview(button)
        
        NSLayoutConstraint.activate([label.topAnchor.constraint(equalTo: self.topAnchor),
                                     label.leadingAnchor.constraint(equalTo: self.leadingAnchor),
                                     label.trailingAnchor.constraint(equalTo: self.trailingAnchor)])
        
        NSLayoutConstraint.activate([button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 20),
                                     button.trailingAnchor.constraint(equalTo: self.trailingAnchor),
                                     button.leadingAnchor.constraint(equalTo: self.leadingAnchor),
                                     button.heightAnchor.constraint(equalToConstant: 60)])
        
        bottomAnchor.constraint(equalTo: button.bottomAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
