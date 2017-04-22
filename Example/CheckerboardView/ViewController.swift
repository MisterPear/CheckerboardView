//
//  ViewController.swift
//  CheckerboardView
//
//  Created by Patryk Gruszka on 04/18/2017.
//  Copyright (c) 2017 Patryk Gruszka. All rights reserved.
//

import UIKit
import CheckerboardView

class ViewController: UIViewController {
    
    @IBOutlet weak var outletCheckerboardView: CheckerboardView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let middle = (UIScreen.main.bounds.size.width - 150) / 2
        
        let realCheckerboardView = CheckerboardView(frame: CGRect(x: middle, y: 32, width: 150, height: 150), lines: 8, columns: 8)
        view.addSubview(realCheckerboardView)
    }
    
    @IBAction func actionAddLine(_ sender: Any) {
        outletCheckerboardView.lines += 1
    }
    
    @IBAction func actionAddColumn(_ sender: Any) {
        outletCheckerboardView.columns += 1
    }
    
    @IBAction func actionRemoveLine(_ sender: Any) {
        outletCheckerboardView.lines -= 1
    }
    
    @IBAction func actionRemoveColumn(_ sender: Any) {
        outletCheckerboardView.columns -= 1
    }
    
    @IBAction func actionRandomColor(_ sender: Any) {
        outletCheckerboardView.randomColor()
    }
    
    @IBAction func actionRandomFirstColor(_ sender: Any) {
        outletCheckerboardView.randomFirstColor()
    }
    
    @IBAction func actionRandomSecondColor(_ sender: Any) {
        outletCheckerboardView.randomSecondColor()
    }

}

