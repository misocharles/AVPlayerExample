//
//  ViewController.swift
//  AVPlayerExample
//
//  Created by incheolbaek on 2015. 11. 15..
//  Copyright © 2015년 incheolbaek. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let destination = segue.destinationViewController as? AVPlayerViewController {
            let url = NSURL(string: "http://www.ebookfrenzy.com/ios_book/movie/movie.mov")!
            destination.player = AVPlayer(URL: url)
        }
    }
}
