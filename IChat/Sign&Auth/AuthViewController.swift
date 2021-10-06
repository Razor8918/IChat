//
//  ViewController.swift
//  IChat
//
//  Created by Георгий on 27.09.2021.
//

import UIKit

class AuthViewController: UIViewController {
    
    let logoImageView = UIImageView(image: UIImage(named: "logo"),
                                    contentmode: .scaleAspectFit)
    
    let googleLabel = UILabel(text: "Get started with")
    let emailLabel = UILabel(text: "Or sign up with")
    let alreadyOnboardLabel = UILabel(text: "Already onboard?")
    
    let googleButton = UIButton(title: "Google",
                               titleColor: .black,
                               backgroundColor: .white,
                               font: .avenir20(),
                               isShadow: true,
                               cornerRadius: 4)
    
    let emailButton = UIButton(title: "Email",
                               titleColor: .white,
                               backgroundColor: .buttonDark(),
                               font: .avenir20(),
                               isShadow: true,
                               cornerRadius: 4)
    
    let loginButton = UIButton(title: "Login",
                               titleColor: .buttonRed(),
                               backgroundColor: .white,
                               font: .avenir20(),
                               isShadow: true,
                               cornerRadius: 4)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        googleButton.customizeGoogleButton()
        view.backgroundColor = .white
        setupCons()
    }
}
   
// MARK: - Setup Cons
    extension AuthViewController {
        private func setupCons() {
            
            logoImageView.translatesAutoresizingMaskIntoConstraints = false
            
            let googleView = buttonFormView(label: googleLabel, button: googleButton)
            let emailView = buttonFormView(label: emailLabel, button: emailButton)
            let loginView = buttonFormView(label: alreadyOnboardLabel, button: loginButton)
            
            let stackView = UIStackView(arrangedSubviews: [googleView, emailView, loginView], axis: .vertical, spacing: 40)
            stackView.translatesAutoresizingMaskIntoConstraints = false
            
            view.addSubview(logoImageView)
            view.addSubview(stackView)
            
            NSLayoutConstraint.activate([logoImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 160),
                                         logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor)])
            
            NSLayoutConstraint.activate([stackView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 100),
                                        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
                                        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)])
            
    }
    }

// MARK: - SwiftUI

import SwiftUI

struct ViewControllerProvider: PreviewProvider {
    
    static var previews: some View {
        
        ContainerView().edgesIgnoringSafeArea(.all)
    }
   
    struct ContainerView: UIViewControllerRepresentable {
        
        func updateUIViewController(_ uiViewController: AuthViewController, context: Context) {
            
        }
        
        let viewController = AuthViewController()
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<ViewControllerProvider.ContainerView>) -> AuthViewController {
            
            return viewController
            
        }
        
      func updateUIViewConroller(_ uiViewController: ViewControllerProvider.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<ViewControllerProvider.ContainerView>) {
            
        }
    }
}
    

    
