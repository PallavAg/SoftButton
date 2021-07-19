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

    @IBOutlet weak var btnPower: SoftButton!
    @IBOutlet weak var btnPlay: SoftButton!
    @IBOutlet weak var btnText: SoftButton!
    
    override func viewDidAppear(_ animated: Bool) {
        setUpButtons()
    }

    // Handle interface mode change
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        setUpButtons()
    }
    
    func setUpButtons() {
        btnPlay.makeNeuromorphic(cornerRadius: btnPlay.bounds.height/2, superView: self.view)
        btnText.makeNeuromorphic(superView: self.view)
        btnPower.makeNeuromorphic(cornerRadius: btnPower.bounds.height/2, superView: self.view)
    }
    
}

