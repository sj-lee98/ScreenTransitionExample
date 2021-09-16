//
//  CodePresentViewController.swift
//  ScreenTransitionExample
//
//  Created by 이성주 on 2021/09/15.
//

import UIKit

protocol sendDataDelegate: AnyObject {
    func sendData(name: String)
}

class CodePresentViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    var name: String?
    weak var delegate: sendDataDelegate? //delegate 변수를 사용 할 때에는 weak 해 줘야함 아니면 메모리 누수 우려

    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name {
            self.nameLabel.text = name
            self.nameLabel.sizeToFit()
        }
    }
    
    @IBAction func tapBackButton(_ sender: UIButton) {
        self.delegate?.sendData(name: "Denny")
        self.presentingViewController?.dismiss(animated: true, completion: nil) 
    }
    
    
}
