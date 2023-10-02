//
//  LoginViewController.swift
//  LoginRegesiterResend
//
//  Created by Chun-Li Cheng on 2023/9/28.
//

import UIKit

class LoginViewController: UIViewController {
    
    var resendVerifyLabelEnable = false               // 能否重傳驗證信

    @IBOutlet weak var resendVerifyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavBar()
        
        resendVerifyLabel.isHidden = !resendVerifyLabelEnable
    }
    


}

extension LoginViewController {
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
