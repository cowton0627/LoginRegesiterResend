//
//  WelcomeViewController.swift
//  LoginRegesiterResend
//
//  Created by Chun-Li Cheng on 2023/9/28.
//

import UIKit

protocol WelcomeViewControllerDelegate: AnyObject {
    func sendToMainPage(state: Bool)
}

class WelcomeViewController: UIViewController {
    
    // 能否重傳驗證信
    private(set) var resendVerifyLabelState = false
    weak var delegate: WelcomeViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavBar()
    }
    

    

}

extension WelcomeViewController {
    private func configureNavBar() {
        let image = UIImage(named: "vector.left")?.withRenderingMode(.alwaysOriginal)
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: image,
                                                           style: .done,
                                                           target: self,
                                                           action: #selector(unwindMainPage))
    }
    
    @objc private func unwindMainPage() {
        guard let vc = self.navigationController?.viewControllers.first as? ViewController else { return }
//        vc.resendVerifyLabelEnabled.toggle()
//        vc.resendVerifyLabelEnabled = !resendVerifyLabelState
        
        delegate = vc
        delegate?.sendToMainPage(state: !resendVerifyLabelState)
        
        self.navigationController?.popToRootViewController(animated: true)
    }
}
