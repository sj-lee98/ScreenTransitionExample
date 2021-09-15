//
//  SeguePushViewController.swift
//  ScreenTransitionExample
//
//  Created by 이성주 on 2021/09/15.
//

import UIKit

class SeguePushViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    @IBAction func TapBackButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
        
    }
}
