//
//  ViewController2.swift
//  AVPlayerExample
//
//  Created by incheolbaek on 2015. 11. 15..
//  Copyright © 2015년 incheolbaek. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController2: UIViewController {
    
    override func viewDidLoad() {
        
        let url = NSURL(string: "http://www.ebookfrenzy.com/ios_book/movie/movie.mov")!
        let player = AVPlayer(URL: url)
        let playerController = AVPlayerViewController()
        
        playerController.player = player
        self.addChildViewController(playerController)
        self.view.addSubview(playerController.view)
        playerController.view.frame = self.view.frame
        
        player.play()
    }
}
