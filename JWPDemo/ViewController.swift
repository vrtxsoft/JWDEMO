//
//  ViewController.swift
//  JWPDemo
//
//  Created by fawad farooq on 31/10/2016.
//  Copyright © 2016 fawad farooq. All rights reserved.
//

import UIKit



class ViewController: UIViewController,JWPlayerDelegate {
    
        var player:JWPlayerController!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
        
        CreateVideoPlayer()
        self.view.addSubview(player.view)
        
        
        
    }
    
    
    
    
    
  
    
    
    
    
    func CreateVideoPlayer(){
        
        
        var config : JWConfig = JWConfig(contentURL: "http://content.bitsontherun.com/videos/bkaovAYt-DZ7jSYgM.mp4")
        
        config.image = "http://content.bitsontherun.com/thumbs/bkaovAYt-480.jpg"
        config.title = "Vertex Demo"
        config.controls = true
        config.repeat = false
        config.premiumSkin = JWPremiumSkinRoundster
        
        
       //MARK: JW AdConfig ///
        
        let adConfig: JWAdConfig = JWAdConfig()
        adConfig.adMessage = "Ad duration countdown xx"
        adConfig.skipMessage = "Skip in xx"
        adConfig.skipText = "Move on"
        adConfig.skipOffset = 3
        adConfig.adClient = vastPlugin
        config.adConfig = adConfig
        
        
        config.autostart = true

        
        self.player = JWPlayerController(config: config)
        
        self.player.delegate = self
        
        
        //MARK: Frame Setting
        
        var frame: CGRect = self.view.bounds
        frame.origin.y = 10
        frame.size.height /= 2
        frame.size.height -= 44

        self.player.view.frame = frame
        self.player.view.autoresizingMask = [
            UIViewAutoresizing.flexibleBottomMargin,
            UIViewAutoresizing.flexibleHeight,
            UIViewAutoresizing.flexibleLeftMargin,
            UIViewAutoresizing.flexibleRightMargin,
            UIViewAutoresizing.flexibleTopMargin,
            UIViewAutoresizing.flexibleWidth]
        
        
        self.player.openSafariOnAdClick = true
        self.player.forceFullScreenOnLandscape = true
        self.player.forceLandscapeOnFullScreen = true
        
        
        self.player.play()
        
        
        
    }
    
    
    
    
    
    
}

