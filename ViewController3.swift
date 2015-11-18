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
    
    //http://www.raywenderlich.com/30200/avfoundation-tutorial-adding-overlays-and-animations-to-videos
    
    func testImage() {
        let image: UIImage = UIImage()
        image.imageWithColor(UIColor.blueColor(), rectSize: nil)
    }
}

extension UIImage {

    func imageWithColor(tintColor: UIColor, rectSize: CGRect?) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(self.size, false, self.scale)
        
        let context = UIGraphicsGetCurrentContext()! as CGContextRef
        CGContextTranslateCTM(context, 0, self.size.height)
        CGContextScaleCTM(context, 1.0, -1.0);
        CGContextSetBlendMode(context, CGBlendMode.Normal)

        let rect: CGRect
        if rectSize == nil {
            rect = CGRectMake(0, 0, self.size.width, self.size.height) as CGRect
        }
        else {
            rect = rectSize!
        }

        CGContextClipToMask(context, rect, self.CGImage)
        tintColor.setFill()
        CGContextFillRect(context, rect)
        
        let newImage = UIGraphicsGetImageFromCurrentImageContext() as UIImage
        UIGraphicsEndImageContext()
        
        return newImage
    }
}