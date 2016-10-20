//
//  ViewController.swift
//  hjy_test6_animate
//
//  Created by yehan on 16/8/29.
//  Copyright © 2016年 yehan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let button  = UIButton.init(type: UIButtonType.RoundedRect)
        button.frame = CGRectMake(80.0, 210.0, 160.0, 40.0)
        button.setTitle("Click me", forState: UIControlState.Normal)
        //let action = NSSelectorFromString("buttonClicked")
        button.addTarget(self, action: #selector(buttonClicked(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func buttonClicked(sender:AnyObject){
        print("AnyObject---")
        let vc = ModalViewController()
        vc.modalViewControllerDelegate = self
        self.pres
    }


}

