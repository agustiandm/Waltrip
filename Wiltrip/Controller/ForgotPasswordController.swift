//
//  ForgotPasswordController.swift
//  Wiltrip
//
//  Created by Agustian DM on 29/01/21.
//

import UIKit

class ForgotPasswordController: UIViewController {
    
    //MARK: - Properties
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
    
    //Forgot password Button
    private let signUpButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Reset Password", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        button.backgroundColor = .brown
        button.layer.cornerRadius = 10
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        return button
    }()
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //MARK: - Selectors
    
    
    //MARK: - Helper
}
