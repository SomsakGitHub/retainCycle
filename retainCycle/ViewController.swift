//
//  ViewController.swift
//  retainCycle
//
//  Created by Somsak Kaeworasan on 30/6/2564 BE.
//

import UIKit

class ViewController: UIViewController {

    var viewModel: ViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewModel = ViewModel(delegate: self)
        print(NSStringFromClass(type(of: self)) + " did load")
    }
    
    deinit {
        print("Deinit " + NSStringFromClass(type(of: self)))
    }
    
    @IBAction func didPressCloseButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
