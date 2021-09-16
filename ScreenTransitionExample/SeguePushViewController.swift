//
//  SeguePushViewController.swift
//  ScreenTransitionExample
//
//  Created by 이성주 on 2021/09/15.
//

import UIKit

class SeguePushViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    var name: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("SeguePushViewController 뷰가 로드 되었다.")
        if let name = name {
            self.nameLabel.text = name
            self.nameLabel.sizeToFit()
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("SeguePushViewController 뷰가 나타날 것이다.")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("SeguePushViewController 뷰가 나타났다.")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("SeguePushViewController 뷰가 사라질 것이다.")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("SeguePushViewController 뷰가 사라졌다.")
    }

    @IBAction func TapBackButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
        
    }
}
