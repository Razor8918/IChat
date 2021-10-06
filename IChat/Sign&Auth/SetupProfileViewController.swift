//
//  SetupProfileViewController.swift
//  IChat
//
//  Created by Георгий on 01.10.2021.
//

import UIKit

class SetupProfileViewController: UIViewController {
    
    let fillImageView = AddPhotoView()
    
    let welcomeLabel = UILabel(text: "Set up profile", font: .avenir26())
    
    let fullNameLabel = UILabel(text: "Full name", font: .avenir20())
    
    let aboutmeLabel = UILabel(text: "About me", font: .avenir20())
    
    let sexLabel = UILabel(text: "Sex", font: .avenir20())
    
    let goToChatsButton = UIButton(title: "Go to chats!",
                                   titleColor: .white,
                               backgroundColor: .buttonDark(),
                               font: .avenir26(),
                               isShadow: false,
                               cornerRadius: 4)
    
    let fullnameTextField = OneLineTextField(font: .avenir20())
    
    let aboutmeTextField = OneLineTextField(font: .avenir20())
    
    let sexSegmentedControl = UISegmentedControl(first: "Male", second: "Female")
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        view.backgroundColor = .white
        setupCons()
    }
}
    

// MARK: - Setup Constraints

extension SetupProfileViewController {
    private func setupCons(){
        
        let fullNameStackView = UIStackView(arrangedSubviews: [fullNameLabel,
                                                               fullnameTextField,
                                                              ],
                                            axis: .vertical,
                                            spacing: 0)
        let aboutMeStackView = UIStackView(arrangedSubviews: [aboutmeLabel,
                                                             aboutmeTextField],
                                           axis: .vertical,
                                           spacing: 0)
        let sexStackView = UIStackView(arrangedSubviews: [sexLabel,
                                                         sexSegmentedControl],
                                       axis: .vertical,
                                       spacing: 12)
        
        goToChatsButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        let stackView = UIStackView(arrangedSubviews: [fullNameStackView,
                                                      aboutMeStackView,
                                                      sexStackView,
                                                      goToChatsButton
                                                      ],
                                    axis: .vertical,
                                    spacing: 40)
    
        stackView.translatesAutoresizingMaskIntoConstraints = false
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        fillImageView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(fillImageView)
        view.addSubview(stackView)
        view.addSubview(welcomeLabel)
        
        NSLayoutConstraint.activate([
            welcomeLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        NSLayoutConstraint.activate([
            fillImageView.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 40),
            fillImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: fillImageView.bottomAnchor, constant: 40),
            stackView.leadingAnchor.constraint(equalTo: view.trailingAnchor, constant: 40),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 40),
        ])
    }
}
