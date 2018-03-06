//
//  LoginViewController.swift
//  zzz
//
//  Created by Przemyslaw Biskup on 19/02/2018.
//  Copyright © 2018 Przemyslaw Biskup. All rights reserved.
//

import UIKit

final class LoginViewController: AppViewController {
    
    lazy var presenter: LoginPresenter = {
        return LoginPresenter(view: self)
    }()
    lazy var router: LoginRouter = {
        return LoginRouter(source: self)
    }()
    
    let loginButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configInit()
        assignConstraints()
    }
    
    private func configInit() {
        view.backgroundColor = .blue
        loginButton.setTitle("_logIn".localized(), for: .normal)
        loginButton.addTarget(self, action: #selector(logInAction), for: .touchUpInside)
        loginButton.setTitleColor(AppColors.lightText, for: .normal)
        loginButton.backgroundColor = .green
    }
    
    private func assignConstraints() {
        view.addSubview(loginButton)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.widthAnchor.constraint(equalTo: view.widthAnchor,
                                           multiplier: 0.7).isActive = true
        loginButton.heightAnchor.constraint(equalTo: view.heightAnchor,
                                            multiplier: 0.1).isActive = true
        loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
                                                            .isActive = true
        loginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
                                                            .isActive = true
    }
    
    @objc private func logInAction() {
        router.showMainArea()
    }
}

extension LoginViewController: LoginViewProtocol {
    
}
