//
//  ViewController.swift
//  UIViewAnimationDemo
//
//  Created by sycf_ios on 2017/5/18.
//  Copyright © 2017年 shibiao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        animateBackgroundColor()
    }
    func animateBackgroundColor() {
        UIView.animate(withDuration: 10, delay: 0, options: [.autoreverse,.curveLinear,.repeat], animations: {
            let x = -(self.imageView.frame.size.width - self.view.frame.width)
            self.imageView.transform = CGAffineTransform(translationX: x, y: 0)
        }, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

