//
//  ViewController.swift
//  SoftButton
//
//  Created by PallavAg on 07/19/2021.
//  Copyright (c) 2021 PallavAg. All rights reserved.
//

import UIKit
import SoftButton

class ViewController: UIViewController {

    @IBOutlet weak var btn: SoftButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        btn.makeNeuromorphic(superView: self.view)
    }

    // Handle interface mode change
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        btn.makeNeuromorphic(superView: self.view)
    }
    
}

