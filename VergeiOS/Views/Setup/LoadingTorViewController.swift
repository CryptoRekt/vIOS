//
//  LoadingTorViewController.swift
//  VergeiOS
//
//  Created by Swen van Zanten on 28-07-18.
//  Copyright © 2018 Verge Currency. All rights reserved.
//

import UIKit

class LoadingTorViewController: UIViewController {
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    func completeLoading() {
        let identifier = WalletManager.default.setup ? "showWallet" : "showWelcomeView"

        self.performSegue(withIdentifier: identifier, sender: self)
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showWallet" {
            let vc = segue.destination as! PinUnlockViewController
            vc.fillPinFor = .wallet
        }
    }
}
