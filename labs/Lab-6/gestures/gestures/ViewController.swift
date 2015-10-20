//
//  ViewController.swift
//  gestures
//
//  Created by Sterling Fraser on 10/13/15.
//  Copyright (c) 2015 Sterling Fraser. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, UIGestureRecognizerDelegate {
    
    var audioPlayer: AVAudioPlayer?
    
//step 1 panning start
    @IBAction func handlePan(sender: UIPanGestureRecognizer) {
        let translation = sender.translationInView(view) //returns new location
        sender.view!.center = CGPoint(x:sender.view!.center.x + translation.x, y:sender.view!.center.y + translation.y)//the origin center point of the image is equal to origin 0 + how much the x and y have moved from that initial 0 value
        
        
        sender.setTranslation(CGPointZero, inView: view) //sets the translation back to 0 so it can calculate new movement from new 0 origin on next pan
        // basically, takes origin of 0, measures pixel translation between 0,0 and new point x,y; moves image; resets origin to new 0,0 value; which can then be altered by next pan in the same way
//step 1 panning end
        
//step 2 slide after pan move start
//        slide after pan finish
        if sender.state == UIGestureRecognizerState.Ended { // when the pan is done and user has finished moving object, add this extra functionality
            //figure out the velocity
            let velocity = sender.velocityInView(self.view) //speed dependent on user movement
            let magnitude = sqrt((velocity.x * velocity.x) + (velocity.y * velocity.y))
            let slideMultiplier = magnitude / 200 //takes velocity and pushes to lower value to determine speed at movement end
            
//            if the length is < 200, then decrease the based speed, otherwise increase it
            let slideFactor = 0.1 * slideMultiplier //increase for a greater slide
            
//            calculate a final point based on the velocity and the sliderfactor
            var finalPoint = CGPoint(x:sender.view!.center.x + (velocity.x * slideFactor), y:sender.view!.center.y + (velocity.y * slideFactor))
            
//            make sure the final point is witihin the view's bounds, prevent from flying off to unreachable point
            finalPoint.x = min(max(finalPoint.x, 0), self.view.bounds.size.width)
            finalPoint.y = min(max(finalPoint.y, 0), self.view.bounds.size.height)
            
//            animate the view and give cubic bezier property to movement speed
            UIView.animateWithDuration(Double(slideFactor * 2), delay:0, options: UIViewAnimationOptions.CurveEaseOut, animations: {sender.view!.center = finalPoint}, completion:nil) //alters end point by slide values
//step 2 slide after pan move end
        }
        
        
    }
    
//step 3 and 4 pinch and rotate start
    @IBAction func handlePinch(sender: UIPinchGestureRecognizer) {
        sender.view!.transform = CGAffineTransformScale(sender.view!.transform, sender.scale, sender.scale)
        sender.scale=1 //reset scale
    }
    
    @IBAction func handleRotate(sender: UIRotationGestureRecognizer) {
        sender.view!.transform = CGAffineTransformRotate(sender.view!.transform, sender.rotation)
        sender.rotation=0 //reset rotation
    }
//step 3 and 4 pinch and rotate end
    
//Step 6 Long Press and sound start
    @IBAction func HandleLongPress(sender: UILongPressGestureRecognizer) {
        
        let audioFilePath = NSBundle.mainBundle().pathForResource("bark", ofType: "wav")
        let fileURL = NSURL(fileURLWithPath: audioFilePath!)
        audioPlayer = AVAudioPlayer(contentsOfURL: fileURL, error: nil)
        if audioPlayer != nil {
            audioPlayer!.play()
        }
    }
//Step 6 Long Press and sound end
    
//step 5 accepting multiple gestures at once start
    func gestureRecognizer(gestureRecognizer:UIGestureRecognizer, shouldRecognizeSimultaneouslyWithGestureRecognizer otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true //allow multiple gestures to be recognized
    }
    
//step 5 accepting multiple gestures at once end
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

