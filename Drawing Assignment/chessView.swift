//
//  chessView.swift
//  Drawing Assignment
//
//  Created by Mounika Ankam on 4/3/15.
//  Copyright (c) 2015 Mounika Ankam. All rights reserved.
//

import UIKit

class chessView: UIView {

    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    
    override func drawRect(rect: CGRect) {
    
        var originPointX:CGFloat = 85
        var originPointY:CGFloat = 100
        var blockSize:CGFloat = 25
        
        var bPath:UIBezierPath!
        
        var count:CGFloat = 0
        var  Ycount:CGFloat = 0
        for var col = 0; col < 8 ; col++
        {
           
            for var row = 0 ; row < 8 ; row++
            {
               bPath = UIBezierPath(rect: CGRectMake(originPointX + count ,originPointY + Ycount,blockSize,blockSize ))
                
                if ((row%2 == 0 && col%2 != 0) || (row%2 != 0 && col%2 == 0))
                {
                    UIColor.blackColor().setFill()
                    bPath.fill()
        
                }
                    
                else if( (row%2 == 0 && col%2 == 0) || (row%2 != 0 || col%2 != 0))
                {
                    UIColor.orangeColor().setFill()
                    bPath.fill()
                }

                count += blockSize

            }
            Ycount += blockSize
            count = 0
            
        }
        
        
        bPath = UIBezierPath()
        bPath.moveToPoint( CGPointMake(80, 90))
        bPath.addLineToPoint(CGPointMake(80, 305))
        bPath.addLineToPoint(CGPointMake(290, 305))
        bPath.addLineToPoint(CGPointMake(290, 95))
        bPath.addLineToPoint(CGPointMake(80, 95))
        bPath.lineWidth = 10.0
        UIColor.brownColor().setStroke()
        bPath.stroke()
        
        
    }


}
