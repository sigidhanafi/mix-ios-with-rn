//
//  ViewController.swift
//  MyMixerAppiOS
//
//  Created by Sigit Hanafi on 12/21/17.
//  Copyright © 2017 Sigit Hanafi. All rights reserved.
//

import UIKit
import React

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func reactNativePage(_ sender: UIButton) {
        NSLog("Hello")
        let jsCodeLocation = URL(string: "http://localhost:8081/index.bundle?platform=ios")
        
        let rootView = RCTRootView(bundleURL: jsCodeLocation, moduleName: "MyMixerApp", initialProperties: nil, launchOptions: nil)
        let vc = UIViewController()
        vc.view = rootView
        self.present(vc, animated: true, completion: nil)
    }
    
}

