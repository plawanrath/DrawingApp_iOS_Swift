//
//  DrawView.swift
//  DrawingApp
//
//  Created by Plawan Rath on 25/01/15.
//  Copyright (c) 2015 Plawan Rath. All rights reserved.
//

import UIKit

class DrawView: UIView {
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    var lines = [Line]()  //Important.. Was making array definition mistake...
    var lastPoint: CGPoint!
    var newPoint: CGPoint!
    var drawColor = UIColor.blackColor()
        
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        lastPoint = touches.anyObject()?.locationInView(self) //LastPoint is the point user last touched
    }
    
    override func touchesMoved(touches: NSSet, withEvent event: UIEvent) {
        newPoint = touches.anyObject()?.locationInView(self) //Where user moves the finger
        lines.append(Line(start: lastPoint, end: newPoint, color: drawColor))
        lastPoint = newPoint
        
        self.setNeedsDisplay()
    }
    
    override func drawRect(rect: CGRect) {
        var context = UIGraphicsGetCurrentContext()
//        CGContextBeginPath(context)
        CGContextSetLineCap(context, kCGLineCapRound)
        CGContextSetLineWidth(context, 5)
        for line in lines {
            CGContextBeginPath(context)
            CGContextMoveToPoint(context, line.startx, line.starty)
            CGContextAddLineToPoint(context, line.endx, line.endy)
            CGContextSetStrokeColorWithColor(context, line.color.CGColor)
            CGContextStrokePath(context)
        }
//        CGContextSetLineCap(context, kCGLineCapRound) //Make lines have a rounded end so looks smoother
        
//        CGContextSetRGBStrokeColor(context, 0, 0, 1, 1)
//        CGContextSetLineWidth(context, 5)
//        CGContextStrokePath(context)
    }
}
