//
//  textField.swift
//  kajsd
//
//  Created by Sterling Fraser on 9/29/15.
//  Copyright (c) 2015 Sterling Fraser. All rights reserved.
//

import Foundation
import UIKit
import QuartzCore
import AVFoundation

class textField : UIViewController {
    
    @IBOutlet weak var textIt: UITextView!
    
    @IBOutlet weak var titleLocation: UILabel!
    
    @IBOutlet weak var backImage: UIImageView!
    
    @IBOutlet weak var btnPause: UIButton!
    
    @IBOutlet weak var btnSpeak: UIButton!
    
    @IBOutlet weak var btnStop: UIButton!
    
    let speechSynthesizer = AVSpeechSynthesizer()
    
    var titleText = String()
    
    let larSq = String("The history of what we now know as Denver goes back to the 19th century land claims. In 1858, Colorado was born as news of gold spread east. Green Russell and a party of Georgians made the first gold strike that summer. They settled at the point where Speer Boulevard crosses Larimer Street today and called their camp Auraria. Soon another group arrived and set up town stakes across the creek and called their settlement St. Charles (about where the Granite building now stands on the corner of 15th and Larimer Streets). Then most of the second group went back to Kansas during the winter to register their township and stock up on provisions to return in the spring. Just after their departure, another group from Kansas arrived at St. Charles headed by General William H. Larimer Jr. He liked what he found and immediately staked out a town for himself as he sent his sidekicks off to Levensworth. They arrived before the original St. Charles representatives and jumped the claim, renaming the town site Denver City after James Denver, the territorial governor of Kansas. The main street was named after General Larimer. Larimer and his son constructed a 16-foot by 20-foot cabin shortly after they arrived. The down-to-earth General had an interesting sense of humor; the doors to his cabin were coffin lids! Also, his cabin had the only glass window in Denver. The cabin was torn down in 1861 and a one-story false-front store took its place until the Granite building was erected in 1882. Soon Denver grew to a town of 25 buildings on Larimer Street. Auraria also grew, and the two towns existed as rivals, until the spring of 1860 when, in a torch lit ceremony on Larimer Street Bridge, the two united and agreed to the name Denver. The city block of Larimer Square housed Denver’s first bank, bookstore, photographer and dry goods store. The block was also the site of Denver’s first post office (where Nest is currently located) as well as the site of the first theater (in the Lincoln building where the store Eve is now located.) On the grassy area at the corner of 14th and Larimer Streets stood the first City and County Building. The old landmark was torn down in the 1940s. The building on the northwest corner of 14th and Larimer Streets was once Gahan’s Saloon, a legendary watering hole for politicians, policemen and city hall reporters. Tales are told of the Gahan Saloon’s notorious back room poker games. The onset of prohibition in 1916 led to the emergence of Gahan’s Soft Drink Parlor. However, legend has it that the basement housed Denver’s hottest speakeasy! Dana CrawfordIn 1963, award-winning preservationist Dana Crawford formed Larimer Square Associates. Under Dana’s leadership and vision, the group successfully prevented the demolition of the 1400 block of Larimer Street by the Denver Urban Renewal Authority (DURA), an organization dedicated to building an impressive skyline at the expense of many historical districts. The struggle was a success and one that led to several similar successes in Lower Downtown. Dana pioneered the redevelopment of Larimer Square throughout the coming years, creating a lively shopping area from the neglected and abandoned buildings of Denver’s original main street. Larimer Square became Denver’s first historic district in 1971. It is its own district – not within LoDo – and is outlined as Larimer Street from 14th to 15th Streets, alley to alley. The entire real estate footprint is only 142,000 square feet. Larimer Square and its many stores, restaurants and special events represent the spirit of a great western city, Crawford says. My family and I are proud to know that we helped originate the revival of historic Larimer Street. Jeff Hermanson. Larimer Square was sold to its current owner, Jeff Hermanson, in 1993. Since then, Larimer Square, under the direction of Hermanson and real estate executive Joe Vostrejs, Larimer Square has gone through a dramatic repositioning movement. More than 90 percent of the property has been leased to new merchants in that time frame that fit the vision of distinctive urban shopping and dining. Larimer Square currently has more than 100 tenants with 40 retail/restaurant merchants in that mix.")
    let pSt = String("A long-time resident of Boulder once said that Pearl Street, in the 1940s, was a good place to buy a pair of socks. Whatever one’s objective, the town’s main thoroughfare has been many things to many people during its decades-long evolution from mud to mall. Boulder began as a supply town for gold miners in the mountains, and Pearl Street is believed to have been named for the wife of one of the town’s 54 founders. When these men established the Boulder City Town Company on February 10, 1859, the land was part of the hunting grounds for roaming bands of Arapahos. In a much paraphrased account twenty-two years later, Chief Niwot, also known as Chief Left Hand, supposedly proclaimed that the Boulder valley was so beautiful that people seeing it will want to stay, and their staying will be the undoing of its beauty. This became known as Niwot’s curse or, in modern terminology, an early attempt at growth control. The gold-seekers stayed anyway, and they drove a stake into the middle of the present-day intersection of Broadway and Pearl. Surveyors sighted across the stake to Valmont Butte, to the east, to determine a straight line for Pearl Street. In the early days, whenever it rained or snowed and horse-drawn freight wagons and carriages shuttled provisions and people around town, the street was thick with ruts. In the summertime, it billowed with dust and flies. To encourage shoppers to come into their stores, individual business owners built their own wooden sidewalks – but they didn’t always match the height or the width of those of their neighbors. In the 1880s, the boardwalks were removed and replaced with flagstones. A horse-drawn streetcar seemed like a good idea when it was introduced in 1891. Laborers plowed and scraped Pearl Street and laid tracks. After a horse pulled the wooden streetcar in one direction, it was unhitched and moved to the other end for the return ride. When the novelty of the paying customers wore off, the streetcar went out of business. A decade later, and with a little more sophistication, Boulder residents welcomed the new electric streetcars that wound their way through town. At the time, crushed rock created a smoother and cleaner road surface. Large streetcars of the Interurban Railroad transported passengers along Pearl Street from 12th Street (now Broadway) to 31st Street, beginning in 1908. Pedestrians could jump on and off while doing their business downtown, or ride all the way to Denver. By 1917, the automobile era was firmly entrenched, and Pearl, between 11th and 17th streets, became the first street in Boulder to be paved. Uniform 15-foot-wide concrete sidewalks flanked either side. Storefronts were lowered in the 1930s, in an attempt at modernization. During the next few years, Boulder’s main street remained relatively unchanged, except for the city’s first streetlight – at Pearl and Broadway. By the 1950s and 1960s, architectural preferences changed, and business owners covered many of the historic buildings with metal facades. Streetcars were long-gone, and shopping centers on the outskirts of town became more convenient for busy post-World War II housewives. The 1960s and much of the 1970s was a time of transition, as social and political upheaval rocked the country. In Boulder, an increase in crime coincided with a doubling of the population and the deterioration of downtown. To keep the commercial core viable, farsighted citizens began a series of planning groups. The first, in 1966, was the Committee for the Exploration of the Core Area Potential (CECAP), later renamed Boulder Tomorrow, Inc. Victor Gruen Associates then drafted elaborate plans which never materialized, but architect Carl Worthington came up with the four-block-pedestrian-mall concept. In 1970, Governor John A. Love signed the Public Mall Act, officially paving the way for Boulder and other Colorado cities to close streets for the construction of pedestrian malls. That same year, the city of Boulder established the Central Area General Improvement District (CAGID) to provide parking and improvements for a thirty-five-block downtown area. In 1974, Boulder Mayor Penfield Tate appointed a Core Area Revitalization Committee (CARC). Despite controversies relating to a projected lack of parking and disruption of businesses, the Boulder City Council passed a resolution to establish the Downtown Boulder Mall. The section of Pearl Street between 11th and 15th streets was closed to traffic in June 1976. Residents got used to driving a one-way loop around downtown and walking to the still-open businesses. Dedication day for the Pearl Street Mall took place on August 6, 1977, changing the face of Pearl Street once again. Since then, long-standing buildings have been restored, and national and local historic designations ensure that the historic character of downtown Boulder will be maintained. Richard Foy, Co-Chair of Communications Arts, Inc. summed up the mall’s success by stating: Pearl Street, once Boulder’s commercial artery, has become its cultural heart and soul.")
    
    let redR = String("Red Rocks is a geologically formed, open-air Amphitheatre that is not duplicated anywhere in the world. With Mother Nature as the architect, the design of the Amphitheatre consists of two, three hundred-foot monoliths (Ship Rock and Creation Rock) that provide acoustic perfection for any performance. The dramatic sandstone monoliths serve as a history book of animal and plant life in the area for the past 250 million years. As spectators gaze at the towering red sandstone rocks, they view the ancient tales of prehistoric times. The area of Red Rocks, originally known as the Garden of Angels, has attracted the attention of musical performers since before the turn of the century. The majestic setting of the Amphitheatre, along with the panoramic view of Denver, makes for a breathtaking scene. In the early 1900's, John Brisben Walker had a vision of artists performing on a stage nestled into the perfectly acoustic surroundings of Red Rocks. Walker produced a number of concerts between 1906 and 1910 on a temporary platform; and from his dream, the history of Red Rocks as an entertainment venue began. In 1927, George Cranmer, Manager of Denver Parks, convinced the City of Denver to purchase the area of Red Rocks from Walker for the price of $54,133. Cranmer convinced the Mayor of Denver, Ben Stapleton, to build on the foundation laid by Walker. By enlisting the help of the federally sponsored Civilian Conservation Corps (CCC), and the Work Projects Administration (WPA), labor and materials were provided for the venture. Denver architect Burnham Hoyt designed the Amphitheatre with an emphasis on preserving the natural beauty of the area. The plans were completed in 1936, and the Amphitheatre was dedicated on June 15, 1941, though the actual construction spanned over 12 years. In 1947, the first annual Easter Sunrise Service took place. Since then, Red Rocks Amphitheatre has attracted the best performers to its stage.")
//    history of red rocks from redrocksonline.com/about/history-geology
    
    func align(){
        self.textIt.scrollRangeToVisible(NSMakeRange(0, 0))
      
    }
    
    func changeHistory(){
        if titleText == "Larimer Square" {
            textIt.text = larSq
            backImage.image=UIImage(named: "LS-old")
        } else if titleText == "Pearl Street" {
            textIt.text = pSt
            backImage.image=UIImage(named: "PS-old")
        } else if titleText == "Red Rocks Ampitheatre" {
            textIt.text = redR
            backImage.image=UIImage(named: "RR-old")
        }
    }
    
    override func viewDidLoad() {
        align()
        titleLocation.text = titleText
        changeHistory()
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //rounds corners and makes them circles
        textIt.layer.cornerRadius = 15.0
        btnSpeak.layer.cornerRadius = 30.0
        btnPause.layer.cornerRadius = 30.0
        btnStop.layer.cornerRadius = 30.0
        
        // Set the initial alpha to transparent
        btnPause.alpha = 0.0
        btnStop.alpha = 0.0

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func speak(sender: UIButton) {
        let speechUtterance = AVSpeechUtterance(string: textIt.text)
        
        speechUtterance.rate = 0.09
        speechUtterance.pitchMultiplier = 1.15
        speechUtterance.volume = 0.75
        
        speechSynthesizer.speakUtterance(speechUtterance)
        
        
        if !speechSynthesizer.speaking {
            let speechUtterance = AVSpeechUtterance(string: textIt.text)
            speechSynthesizer.speakUtterance(speechUtterance)
        }
        else{
            speechSynthesizer.continueSpeaking()
        }
        
        animateActionButtonAppearance(true)
    }
    
    
    @IBAction func pauseSpeech(sender: UIButton) {
        speechSynthesizer.pauseSpeakingAtBoundary(AVSpeechBoundary.Word)
        animateActionButtonAppearance(false)
    }
    
    
    @IBAction func stopSpeech(sender: UIButton) {
        speechSynthesizer.stopSpeakingAtBoundary(AVSpeechBoundary.Immediate)
        animateActionButtonAppearance(false)
    }
    
    func animateActionButtonAppearance(shouldHideSpeakButton: Bool) {
        var speakButtonAlphaValue: CGFloat = 1.0
        var pauseStopButtonsAlphaValue: CGFloat = 0.0
        
        if shouldHideSpeakButton {
            speakButtonAlphaValue = 0.0
            pauseStopButtonsAlphaValue = 1.0
        }
        
        UIView.animateWithDuration(0.25, animations: { () -> Void in
            self.btnSpeak.alpha = speakButtonAlphaValue
            
            self.btnPause.alpha = pauseStopButtonsAlphaValue
            
            self.btnStop.alpha = pauseStopButtonsAlphaValue
        })
    }
    
    @IBAction func Home(sender: UIButton) {
     speechSynthesizer.stopSpeakingAtBoundary(AVSpeechBoundary.Immediate)
    }
    //all code for speech to text learned from tutorial at http://www.appcoda.com/text-to-speech-ios-tutorial/
    
}