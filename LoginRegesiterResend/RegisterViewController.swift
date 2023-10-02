//
//  RegisterViewController.swift
//  LoginRegesiterResend
//
//  Created by Chun-Li Cheng on 2023/9/28.
//

import UIKit

class RegisterViewController: UIViewController {
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavBar()
    }
    



}

extension RegisterViewController {
    private func configureNavBar() {
        let image = UIImage(named: "vector.left")?.withRenderingMode(.alwaysOriginal)
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: image,
                                                           style: .done,
                                                           target: self,
                                                           action: #selector(unwindMainPage))
    }
    
    @objc private func unwindMainPage() {
        self.navigationController?.popViewController(animated: true)
    }
}
