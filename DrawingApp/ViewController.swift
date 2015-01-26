//
//  ViewController.swift
//  DrawingApp
//
//  Created by Plawan Rath on 25/01/15.
//  Copyright (c) 2015 Plawan Rath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var drawView : DrawView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clearTapped() {
        drawView.lines = []
        drawView.setNeedsDisplay()
    }
    
    @IBAction func colorTapped(button: UIButton!) {
        var color : UIColor!
        if (button.titleLabel?.text == "Red") {
            color = UIColor.redColor()
        } else if (button.titleLabel?.text == "Black") {
            color = UIColor.blackColor()
        } else if (button.titleLabel?.text == "Blue") {
            color = UIColor.blueColor()
        }
        drawView.drawColor = color
    }

}

