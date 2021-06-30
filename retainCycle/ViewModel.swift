//
//  ViewModel.swift
//  retainCycle
//
//  Created by Somsak Kaeworasan on 30/6/2564 BE.
//

import UIKit

class ViewModel {
    
    weak var delegate: UIViewController?
    
    convenience init (delegate: UIViewController) {
        self.init()
        self.delegate = delegate
        print(NSStringFromClass(type(of: self)) + " did load")
    }
    
    deinit {
        print("Deinit " + NSStringFromClass(type(of: self)))
    }
}
