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

extension UITableViewRowAnimation: EnumCollection {}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(SomeEnumType.allCases)
        print(SomeEnumType.allValues)
        print(SomeEnumType.allValues.rawValues)
        print(SomeEnumType.allRaws)
        print(SomeEnumType.allContents)
        
        let animations = UITableViewRowAnimation.allValues
        print(animations)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

