//
//  Pig.swift
//  test
//
//  Created by Spiro Mifsud on 11/7/15.
//  Copyright © 2015 Spiro Mifsud. All rights reserved.
//

import UIKit
import Foundation

class Pig : UIImageView
{
    var force : CGFloat = 1;
    let multiplier : CGFloat = 100;
    
    func commonInit()
    {
        self.image = UIImage(named: "pig.png");
        self.frame = CGRectMake(210,260 , 400,395.5);
        self.center  = CGPoint (x:210, y:260);
        self.userInteractionEnabled = true;
    };
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?)
    {
        guard let touch = touches.first else { return }
        _ = touch.locationInView(self)
        if traitCollection.forceTouchCapability == .Available
        {
            if (touch.view == self)
            {
                force = touch.force;
                print("Force:\(touch.force)")
                self.moveImage(self);
            };
        };
    };
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?)
    {
        guard let touch = touches.first else { return }
        _ = touch.locationInView(self)
        if traitCollection.forceTouchCapability == .Available
        {
            if (touch.view == self)
            {
                force = 0;
                self.transform = CGAffineTransformScale(self.transform,self.transform.a,self.transform.a)
                self.moveImage(self);
            };
        };
    };
    
    
    func moveImage(imageView: UIImageView)
    {
       
        if (force < 0.7)
        {
            force = 0.1
        };
        
        self.frame = CGRectMake(210,260 , (multiplier*force)+400, (multiplier*force)+395.5);
        self.center  = CGPoint (x:210, y:260)
    };
};