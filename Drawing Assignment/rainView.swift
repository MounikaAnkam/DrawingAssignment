//
//  rainView.swift
//  Drawing Assignment
//
//  Created by Mounika Ankam on 4/3/15.
//  Copyright (c) 2015 Mounika Ankam. All rights reserved.
//

import UIKit

class rainView: UIView {

 
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        
        for a in 1...300 {
            var point:CGFloat = CGFloat(arc4random_uniform(20) )
            var bPath = UIBezierPath(ovalInRect: CGRectMake( CGFloat(arc4random_uniform(400)) ,CGFloat(arc4random_uniform(800)), point , point ))
          bPath.stroke()
            getRandomColor().setFill()
            bPath.fill()

        }
        
    }

    func getRandomColor() -> UIColor{
        
        var randomRed:CGFloat = CGFloat(Double(arc4random_uniform(10)) / 10.0)
        var randomGreen:CGFloat = CGFloat(Double(arc4random_uniform(10)) / 10.0)
        var randomBlue:CGFloat = CGFloat(Double(arc4random_uniform(10)) / 10.0)

        
      
        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
        
        
    }

}
