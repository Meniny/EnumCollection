//
//  ViewController.swift
//  Sample
//
//  Created by Meniny on 2017-08-11.
//  Copyright © 2017年 Meniny. All rights reserved.
//

import UIKit
import EnumCollection

public enum SomeEnumType: Int, EnumCollection {
    case a, b, c
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let all = SomeEnumType.allValues
        print(all)
        for s in all {
            print(s.rawValue)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

