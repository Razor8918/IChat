//
//  LoginViewController.swift
//  IChat
//
//  Created by Георгий on 30.09.2021.
//

import UIKit



class LoginViewController: UIViewController {
    
    let welcomeLabel = UILabel(text: "Welcome back!", font: .avenir26())
    
    let loginWithLabel = UILabel(text: "Login with")
    let orLabel = UILabel(text: "Or")
    let emailLabel = UILabel(text: "Email")
    let passwordLabel = UILabel(text: "Password")
    let needAnAccountLabel = UILabel(text: "Need an account?")
    
    let emailTextField = OneLineTextField(font: .avenir20())
    let passwordTextField = OneLineTextField(font: .avenir20())
    let confirmPasswordTextField = OneLineTextField(font: .avenir20())
    
    let googleButton = UIButton(title: "Google",
                                titleColor: .black,
                                backgroundColor: .white,
                                font: .avenir26(),
                                isShadow: true,
                                cornerRadius: 4)
    
    let loginButton = UIButton(title: "Login",
                                titleColor: .white,
                                backgroundColor: .buttonDark(),
                                font: .avenir26(),
                                isShadow: true,
                                cornerRadius: 4)
    
    let signUpButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign In", for: .normal)
        button.setTitleColor(.buttonRed(), for: .normal)
        button.titleLabel?.font = .avenir20()
        return button
    }()
    
    weak var delegate: AuthNavigatingDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        googleButton.customizeGoogleButton()
        view.backgroundColor = .white
        setupConstraints()
        
        loginButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        signUpButton.addTarget(self, action: #selector(signUpButtonTapped), for: .touchUpInside)
    }
    @objc private func loginButtonTapped() {
        print(#function)
        AuthService.shared.login(email: emailTextField.text!, password: passwordTextField.text!) { (result) in
            switch result {
            case .success(let user):
                self.showAlert(with: "Успешно", and: "Вы зарегистрированы") {
                    self.present(SetupProfileViewController(currentUser: user), animated: true, completion: nil)
                }
            case .failure(let error):
                self.showAlert(with: "Ошибка!", and: error.localizedDescription)
            }
        }
    }
    @objc private func signUpButtonTapped() {
        dismiss(animated: true) {
            self.delegate?.toSignUpVC()
        }
}
}


// MARK: - Setup Constraints

extension LoginViewController {
    private func setupConstraints() {
        
        let loginWithView = buttonFormView(label: loginWithLabel, button: googleButton)
        let emailStackView = UIStackView(arrangedSubviews: [
            emailLabel,
            emailTextField
        ],
            axis: .vertical,
            spacing: 0)
        let passwordStackView = UIStackView(arrangedSubviews: [
            passwordLabel,
            passwordTextField
        ],
            axis: .vertical,
            spacing: 0)
        
        loginButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        let stackView = UIStackView(arrangedSubviews: [
        loginWithView,
        orLabel,
        emailStackView,
        passwordStackView,
        loginButton
        ],
        axis: .vertical,
        spacing: 40)
        signUpButton.contentHorizontalAlignment = .leading
        
        let bottomStackView = UIStackView(arrangedSubviews: [
            needAnAccountLabel,
            signUpButton
        ],
            axis: .horizontal,
            spacing: 0)
        
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false
        bottomStackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(welcomeLabel)
        view.addSubview(stackView)
        view.addSubview(bottomStackView)
        
        NSLayoutConstraint.activate([
            welcomeLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)])
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 80),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 40),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -40)])
        NSLayoutConstraint.activate([
            bottomStackView.topAnchor.constraint(equalTo: stackView.bottomAnchor,constant: 20),
            bottomStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 40),
            bottomStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -40)])
    }
}
