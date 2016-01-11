//
//  ViewController.swift
//  WhereIsEvan
//
//  Created by Nicholas Thompson on 1/10/16.
//  Copyright © 2016 Nicholas Thompson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var box1: UIButton!
    
    @IBOutlet weak var box2: UIButton!
    
    @IBOutlet weak var box3: UIButton!
    
    @IBOutlet weak var box4: UIButton!
    
    @IBOutlet weak var hideEvanButton: UIButton!
    
    @IBOutlet weak var cheatButton: UIButton!
    
    @IBOutlet weak var thumbsUpImage: UIImageView!
    
    @IBOutlet weak var debug: UILabel!
    
    var evansBox = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        placeEvanInBox()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func randomNumber(range: Range<Int> = 1...6) -> Int {
        let min = range.startIndex
        let max = range.endIndex
        return Int(arc4random_uniform(UInt32(max - min))) + min
    }
    
    func placeEvanInBox() {
        evansBox = randomNumber(1...4)
        print(evansBox)
        debug.text = String(evansBox)
    }

    @IBAction func checkBox1(sender: AnyObject) {
        if evansBox == 1 {
            box1.setImage(UIImage(named: "box_evan.png"), forState: UIControlState.Normal)
            self.hideEvanButton.hidden = false
            self.cheatButton.hidden = true
            self.thumbsUpImage.hidden = false
            let delay = 0.5 * Double(NSEC_PER_SEC)
            let time = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
            dispatch_after(time, dispatch_get_main_queue()) {
                self.box2.setImage(UIImage(named: "box_zombie.png"), forState: UIControlState.Normal)
                self.box3.setImage(UIImage(named: "box_zombie.png"), forState: UIControlState.Normal)
                self.box4.setImage(UIImage(named: "box_zombie.png"), forState: UIControlState.Normal)
            }
        } else {
            box1.setImage(UIImage(named: "box_zombie.png"), forState: UIControlState.Normal)
        }
    }
    
    @IBAction func checkBox2(sender: AnyObject) {
        if evansBox == 2 {
            box2.setImage(UIImage(named: "box_evan.png"), forState: UIControlState.Normal)
            self.hideEvanButton.hidden = false
            self.cheatButton.hidden = true
            self.thumbsUpImage.hidden = false
            let delay = 0.5 * Double(NSEC_PER_SEC)
            let time = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
            dispatch_after(time, dispatch_get_main_queue()) {
                self.box1.setImage(UIImage(named: "box_zombie.png"), forState: UIControlState.Normal)
                self.box3.setImage(UIImage(named: "box_zombie.png"), forState: UIControlState.Normal)
                self.box4.setImage(UIImage(named: "box_zombie.png"), forState: UIControlState.Normal)
            }        } else {
            box2.setImage(UIImage(named: "box_zombie.png"), forState: UIControlState.Normal)
        }
    }
    
    @IBAction func checkBox3(sender: AnyObject) {
        if evansBox == 3 {
            box3.setImage(UIImage(named: "box_evan.png"), forState: UIControlState.Normal)
            self.hideEvanButton.hidden = false
            self.cheatButton.hidden = true
            self.thumbsUpImage.hidden = false
            let delay = 0.5 * Double(NSEC_PER_SEC)
            let time = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
            dispatch_after(time, dispatch_get_main_queue()) {
                self.box1.setImage(UIImage(named: "box_zombie.png"), forState: UIControlState.Normal)
                self.box2.setImage(UIImage(named: "box_zombie.png"), forState: UIControlState.Normal)
                self.box4.setImage(UIImage(named: "box_zombie.png"), forState: UIControlState.Normal)
            }        } else {
            box3.setImage(UIImage(named: "box_zombie.png"), forState: UIControlState.Normal)
        }
    }
    
    @IBAction func checkBox4(sender: AnyObject) {
        if evansBox == 4 {
            box4.setImage(UIImage(named: "box_evan.png"), forState: UIControlState.Normal)
            self.hideEvanButton.hidden = false
            self.cheatButton.hidden = true
            self.thumbsUpImage.hidden = false
            let delay = 0.5 * Double(NSEC_PER_SEC)
            let time = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
            dispatch_after(time, dispatch_get_main_queue()) {
                self.box1.setImage(UIImage(named: "box_zombie.png"), forState: UIControlState.Normal)
                self.box2.setImage(UIImage(named: "box_zombie.png"), forState: UIControlState.Normal)
                self.box3.setImage(UIImage(named: "box_zombie.png"), forState: UIControlState.Normal)
            }
        } else {
            box4.setImage(UIImage(named: "box_zombie.png"), forState: UIControlState.Normal)
        }
    }
    
    @IBAction func reset(sender: AnyObject) {
        placeEvanInBox()
        box1.setImage(UIImage(named: "box_closed.png"), forState: UIControlState.Normal)
        box2.setImage(UIImage(named: "box_closed.png"), forState: UIControlState.Normal)
        box3.setImage(UIImage(named: "box_closed.png"), forState: UIControlState.Normal)
        box4.setImage(UIImage(named: "box_closed.png"), forState: UIControlState.Normal)
        hideEvanButton.hidden = true
        cheatButton.hidden = true
        thumbsUpImage.hidden = true
    }
   
    @IBAction func comeOutEvan(sender: AnyObject) {
        cheatButton.hidden = true
        if evansBox == 1 {
            box1.setImage(UIImage(named: "box_evan.png"), forState: UIControlState.Normal)
//            box2.setImage(UIImage(named: "box_open.png"), forState: UIControlState.Normal)
//            box3.setImage(UIImage(named: "box_open.png"), forState: UIControlState.Normal)
//            box4.setImage(UIImage(named: "box_open.png"), forState: UIControlState.Normal)
            hideEvanButton.hidden = false
        }
        else if evansBox == 2 {
            box2.setImage(UIImage(named: "box_evan.png"), forState: UIControlState.Normal)
//            box1.setImage(UIImage(named: "box_open.png"), forState: UIControlState.Normal)
//            box3.setImage(UIImage(named: "box_open.png"), forState: UIControlState.Normal)
//            box4.setImage(UIImage(named: "box_open.png"), forState: UIControlState.Normal)
            hideEvanButton.hidden = false
        }
        else if evansBox == 3 {
            box3.setImage(UIImage(named: "box_evan.png"), forState: UIControlState.Normal)
//            box1.setImage(UIImage(named: "box_open.png"), forState: UIControlState.Normal)
//            box2.setImage(UIImage(named: "box_open.png"), forState: UIControlState.Normal)
//            box4.setImage(UIImage(named: "box_open.png"), forState: UIControlState.Normal)
            hideEvanButton.hidden = false
        }
        else if evansBox == 4 {
            box4.setImage(UIImage(named: "box_evan.png"), forState: UIControlState.Normal)
//            box1.setImage(UIImage(named: "box_open.png"), forState: UIControlState.Normal)
//            box2.setImage(UIImage(named: "box_open.png"), forState: UIControlState.Normal)
//            box3.setImage(UIImage(named: "box_open.png"), forState: UIControlState.Normal)
            hideEvanButton.hidden = false
        }
    }
}

