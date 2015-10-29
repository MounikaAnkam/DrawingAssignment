//
//  hillsView.swift
//  Drawing Assignment
//
//  Created by Mounika Ankamon 4/3/15.
//  Copyright (c) 2015 Mounika Ankam. All rights reserved.
//

import UIKit

class hillsView: UIView {

    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        
        var bPath = UIBezierPath()
        bPath.moveToPoint(CGPoint(x: 0, y: 300))
        var count = 250
        
                for J in 1...6 {
                     bPath.addLineToPoint(CGPoint(x: J*62, y: count))
        
                    if count == 250 {
                        count = count + 50
                    }else{
                        count = 250
                    }
                }
        
        bPath.lineWidth = 6.0

        bPath.stroke()
    }
    

}
