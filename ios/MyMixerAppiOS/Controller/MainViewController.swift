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
        self.navigationItem.title = "Mixer App"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func reactNativePage(_ sender: UIButton) {
        let jsCodeLocation = URL(string: "http://localhost:8081/index.bundle?platform=ios")
        
        let rootView = RCTRootView(bundleURL: jsCodeLocation, moduleName: "MyMixerApp", initialProperties: nil, launchOptions: nil)
        let vc = UIViewController()
        vc.view = rootView
        vc.navigationItem.title = "React page"
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func nativePage(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

