//
//  ViewController.swift
//  test
//
//  Created by Spiro Mifsud on 11/6/15.
//  Copyright © 2015 Spiro Mifsud. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    let pig = Pig (frame:CGRectMake(300,300, 100, 300));
    var force : CGFloat = 1;
   
    
    override func viewDidLoad()
    {
        super.viewDidLoad();
       
        pig.commonInit();
        self.view.addSubview(pig);
   };
    
     
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    };
};

