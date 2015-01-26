//
//  Line.swift
//  DrawingApp
//
//  Created by Plawan Rath on 25/01/15.
//  Copyright (c) 2015 Plawan Rath. All rights reserved.
//

import UIKit

class Line {
    var start: CGPoint
    var end: CGPoint
    var color: UIColor
    
    var startx: CGFloat {
        get {
            return start.x
        }
    }
    
    var starty: CGFloat {
        get {
            return start.y
        }
    }
    
    var endx: CGFloat {
        get {
            return end.x
        }
    }

    var endy: CGFloat {
        get {
            return end.y
        }
    }

    init(start _start: CGPoint, end _end: CGPoint, color _color: UIColor) {
        start = _start
        end = _end
        color = _color
    }
}