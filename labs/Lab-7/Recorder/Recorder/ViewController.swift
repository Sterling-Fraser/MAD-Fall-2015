//
//  ViewController.swift
//  Recorder
//
//  Created by Sterling Fraser on 10/15/15.
//  Copyright (c) 2015 Sterling Fraser. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate, AVAudioRecorderDelegate {
    
    
    @IBOutlet weak var recordButton: UIButton!
    
    @IBOutlet weak var stopButton: UIButton!
    
    @IBOutlet weak var playButton: UIButton!
    
    var audioPlayer: AVAudioPlayer?
    var audioRecorder: AVAudioRecorder?
    let fileName = "audio.caf"
    
    
    override func viewDidLoad() {
        //        disable buttons since no recording has happened yet
        playButton.enabled = false;
        stopButton.enabled = false;
        
        //        get path for the audio file
        let dirPath = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true)
        let docDir = dirPath[0] as! String //documents directory
        let audioFilePath = docDir.stringByAppendingPathComponent(fileName)
        let audioFileURL = NSURL(fileURLWithPath: audioFilePath)    //URL to the audio file
        
        //recorder settings
        //NSDictionary for settings
        let recordSettings = [AVEncoderAudioQualityKey: AVAudioQuality.Min.rawValue, AVEncoderBitRateKey: 16, AVNumberOfChannelsKey: 2, AVSampleRateKey: 44100.0]
        var error : NSError?
        
        //create the AVAudioRecorder instance
        audioRecorder = AVAudioRecorder(URL: audioFileURL, settings: recordSettings as [NSObject : AnyObject], error: &error)
        
        //test for error
        if let err = error {
            println("AVAudioRecorder error: \(err.localizedDescription)")
        } else {
            audioRecorder?.delegate = self //sets the delegate
            audioRecorder?.prepareToRecord() //ready to record
        }
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    
    @IBAction func recordAudio(sender: UIButton) {
        //if not already recording
        if audioRecorder?.recording == false{
            playButton.enabled = false
            stopButton.enabled = true
            audioRecorder?.record()
        }
    }
    
    @IBAction func stopAudio(sender: UIButton) {
        stopButton.enabled = false
        playButton.enabled = true
        recordButton.enabled = true
        
        if audioRecorder?.recording == true {
            audioRecorder?.stop()
        }  else {
            audioPlayer?.stop()
        }
    }
    
    @IBAction func playAudio(sender: UIButton) {
        if audioRecorder?.recording == false {
        stopButton.enabled = true
        recordButton.enabled = false
            var error: NSError?
            
            //create the audioPlayer instance
            audioPlayer=AVAudioPlayer(contentsOfURL: audioRecorder?.url, error: &error)
            
            //test for error
            if let err = error {
                println("AVAudioPlayer error: \(err.localizedDescription)")
            } else {
                audioPlayer?.delegate=self //sets the delegate
                audioPlayer?.play() //plays audio file
            }
        
        }
    }
    
    func audioPlayerDidFinishPlaying(player: AVAudioPlayer!, successfully flag: Bool) {
        recordButton.enabled = true
        stopButton.enabled = false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


