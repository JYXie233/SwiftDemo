//
//  ViewController.swift
//  SwiftDemo
//
//  Created by tom on 14-6-3.
//  Copyright (c) 2014年 tom. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var count = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Test("asd")
        var scrollView = JYScrollView(frame:self.view!.bounds)
        scrollView._banner_image = UIImage(named:"bg_2")
        self.view!.addSubview(scrollView)
        scrollView.contentSize = CGSize(width: 320, height: 600)
    }
    func tapAction(tap:UITapGestureRecognizer){
        NSLog("\(count++)");
    }

    @IBAction func ButtonClickFunc(sender : AnyObject) {
        
    }
    func Test(name : String){
        var bg = UIView(frame: CGRect(x: 0,y: 80,width: 100,height: 100))
        bg.frame = CGRect(x:1,y:34,width:120,height:120)
        bg.backgroundColor = UIColor(red:0.1,green:0.23,blue:0.9,alpha:1)
        var num = "123"
        view.addSubview(bg)
        view.bringSubviewToFront(bg)
        let text : String? = "asds"
        let texter : String!
        println(text)
        println(texter)
        for _ in 0...9{
            
        }
        var vc:OCViewController = OCViewController()
        var tap = UITapGestureRecognizer(target:self, action:Selector("tapAction:"))
        bg.addGestureRecognizer(tap)

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidDisappear(animated: Bool) {
        
    }

}

