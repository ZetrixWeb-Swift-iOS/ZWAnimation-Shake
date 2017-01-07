//
//  ViewController.swift
//  ZWAnimation
//
//  Created by Pratik Joshi on 07/01/17.
//  Copyright © 2017 Zetrixweb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var objView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnShakeClicked(_ sender: Any) {
            self.shakeView(vw: objView)
    }
    
    func shakeView(vw: UIView) {
        let animation = CAKeyframeAnimation()
        animation.keyPath = "position.x"
        animation.values = [0, 10, -10, 10, -5, 5, -5, 0 ]
        animation.keyTimes = [0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.75, 0.875, 1]
        animation.duration = 0.4
        animation.isAdditive = true
        
        vw.layer.add(animation, forKey: "shake")
    }

}

