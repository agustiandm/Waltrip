//
//  SignUpController.swift
//  Wiltrip
//
//  Created by Agustian DM on 29/01/21.
//

import UIKit

class SignUpController: UIViewController {
    
    //MARK: - Properties
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Create New Account"
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = .white
        return label
    }()
    
    //NameTextField
    private lazy var nameContainer: UIView = {
        let view = UIView().inputContainerView(image: "person.fill", textField: nameTextField)
        view.heightAnchor.constraint(equalToConstant: 50).isActive = true
        return view
    }()
    private let nameTextField: UITextField = {
        let view = UITextField().textField(withPlaceholder: "Full Name", isSecureText: false)
        view.heightAnchor.constraint(equalToConstant: 50).isActive = true
        return view
    }()
    
    //EmailTextField
    private lazy var emailContainer: UIView = {
        let view = UIView().inputContainerView(image: "envelope.fill", textField: emailTextField)
        view.heightAnchor.constraint(equalToConstant: 50).isActive = true
        return view
    }()
    private let emailTextField: UITextField = {
        let view = UITextField().textField(withPlaceholder: "Email", isSecureText: false)
        view.heightAnchor.constraint(equalToConstant: 50).isActive = true
        return view
    }()
    
    //PasswordTextField
    private lazy var passwordContainer: UIView = {
        let view = UIView().inputContainerView(image: "lock.fill", textField: passwordTextField)
        view.heightAnchor.constraint(equalToConstant: 50).isActive = true
        return view
    }()
    private let passwordTextField: UITextField = {
        let view = UITextField().textField(withPlaceholder: "Password", isSecureText: true)
        view.heightAnchor.constraint(equalToConstant: 50).isActive = true
        return view
    }()
    
    //AccountType
    private lazy var accountTypeContainer: UIView = {
        let view = UIView().inputContainerView(image: "info.circle.fill",
                                               segmentedControl: accountTypeSegmentedControl)
        view.heightAnchor.constraint(equalToConstant: 50).isActive = true
        return view
    }()
    private let accountTypeSegmentedControl: UISegmentedControl = {
        let sc = UISegmentedControl(items: ["Rider", "Driver"])
        sc.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        sc.tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        sc.selectedSegmentIndex = 0
        return sc
    }()
    
    //Login Button
    private let signUpButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign Up", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        button.backgroundColor = .brown
        button.layer.cornerRadius = 10
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        return button
    }()
    
    //Have account
    private let haveAccountButton: UIButton = {
        let button = UIButton(type: .system)
        let attributedTitle = NSMutableAttributedString(string: "Already have an account?  ", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 14), NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        
        attributedTitle.append(NSAttributedString(string: "Login", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 16), NSAttributedString.Key.foregroundColor: UIColor.brown]))
        button.addTarget(self, action: #selector(handleShowLogin), for: .touchUpInside)
        button.setAttributedTitle(attributedTitle, for: .normal)
        return button
    }()
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        
    }
    
    //MARK: - Selectors
    @objc func handleShowLogin() {
        let loginVC = LoginController()
        navigationController?.pushViewController(loginVC, animated: true)
    }
    
    //MARK: - Helper
    func configureUI() {
        view.backgroundColor = .black
        
        view.addSubview(titleLabel)
        titleLabel.anchor(top: view.safeAreaLayoutGuide.topAnchor,
                          paddingTop: 30)
        titleLabel.centerX(inView: view)
        
        let stack = UIStackView(arrangedSubviews: [nameContainer,
                                                   emailContainer,
                                                   passwordContainer,
                                                   accountTypeContainer])
        stack.axis = .vertical
        stack.spacing = 16
        stack.distribution = .fillProportionally
        view.addSubview(stack)
        stack.centerX(inView: view)
        stack.anchor(top: titleLabel.bottomAnchor,
                     left: view.leftAnchor,
                     right: view.rightAnchor,
                     paddingTop: 40,
                     paddingLeft: 26,
                     paddingRight: 26)
        
        view.addSubview(signUpButton)
        signUpButton.anchor(top: stack.bottomAnchor,
                           left: view.leftAnchor,
                           right: view.rightAnchor,
                           paddingTop: 35,
                           paddingLeft: 26,
                           paddingRight: 26)
        
        view.addSubview(haveAccountButton)
        haveAccountButton.centerX(inView: view)
        haveAccountButton.anchor(bottom: view.safeAreaLayoutGuide.bottomAnchor, height: 32)
    }
}
