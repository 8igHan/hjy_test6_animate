//
//  ModalViewController.swift
//  hjy_test6_animate
//
//  Created by yehan on 16/8/29.
//  Copyright © 2016年 yehan. All rights reserved.
//

import UIKit

class ModalViewController: UIViewController {
    
    weak var modalViewControllerDelegate:ModalViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.initView()

        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func initView(){
        self.view.backgroundColor = UIColor.lightGrayColor()
        
        let button = UIButton.init(type: UIButtonType.RoundedRect)
        button.frame = CGRectMake(80.0, 210.0, 160.0, 40.0)
        button.setTitle("Dismiss me",forState:UIControlState.Normal)
        button.addTarget(self, action: #selector(buttonclick(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button)
    }
    
    func buttonclick(sender:UIButton){
        print("----buttonclick----")
        self.modalViewControllerDelegate?.modalViewControllerDidClickedDismissButton(self)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
//定义协议
protocol ModalViewControllerDelegate:NSObjectProtocol{
    func modalViewControllerDidClickedDismissButton(viewController:UIViewController)
}
