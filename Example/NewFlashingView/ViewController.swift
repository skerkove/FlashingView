//
//  ViewController.swift
//  NewFlashingView
//
//  Created by skerkove on 05/02/2020.
//  Copyright (c) 2020 skerkove. All rights reserved.
//

import UIKit
import NewFlashingView

@available(iOS 10.0, *)
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let flashingView = FlashingView(frame: self.view.bounds)
                
        self.view.addSubview(flashingView)    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

