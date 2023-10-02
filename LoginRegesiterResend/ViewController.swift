//
//  ViewController.swift
//  LoginRegesiterResend
//
//  Created by Chun-Li Cheng on 2023/9/28.
//

import UIKit

/// MainPage，Choose Login Or Register
class ViewController: UIViewController {
    
    
    
    var resendVerifyLabelEnabled = false            // 能否重傳驗證信


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? LoginViewController {
            vc.resendVerifyLabelEnable = resendVerifyLabelEnabled
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if self.navigationController?.viewControllers.count ?? 0 >= 3,
           self.navigationController?.viewControllers[2] is ViewController {
            configureNavBar()
        }
    }


}

extension ViewController {
    private func configureNavBar() {
        let image = UIImage(named: "vector.left")?.withRenderingMode(.alwaysOriginal)
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: image,
                                                           style: .done,
                                                           target: self,
                                                           action: #selector(unwindToLast))
    }
    
    @objc private func unwindToLast() {
        self.navigationController?.popViewController(animated: true)
    }
}

extension ViewController: WelcomeViewControllerDelegate {
    
    func sendToMainPage(state: Bool) {
        resendVerifyLabelEnabled = state
    }
}

