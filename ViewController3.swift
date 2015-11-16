//
//  ViewController3.swift
//  AVPlayerExample
//
//  Created by incheolbaek on 2015. 11. 16..
//  Copyright © 2015년 incheolbaek. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController3: UIViewController {
    
    override func viewDidLoad() {
        let videoURL = NSURL(string: "http://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")!
        let player = AVPlayer(URL: videoURL)
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = self.view.bounds
        self.view.layer.addSublayer(playerLayer)
        player.play()
    }
}
