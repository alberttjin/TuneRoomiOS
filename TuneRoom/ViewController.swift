//
//  ViewController.swift
//  TuneRoom
//
//  Created by Albert Jin on 4/28/19.
//  Copyright © 2019 Albert Jin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SPTAppRemotePlayerStateDelegate {
    @IBOutlet weak var playButton: UIButton!
    
    //var playerState = SPTAppRemotePlayerState()
    
    //var playerState: SPTAppRemotePlayerState?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func playerStateDidChange(_ playerState: SPTAppRemotePlayerState) {
        return;
    }

    @IBAction func playPause(_ playerState: SPTAppRemotePlayerState) {
        /**
        if (playerState.isPaused) {
            //SPTAppRemotePlayerAPI.resume()
            let alert = UIAlertController(title: "Paused", message: "Paused", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil))
            self.present(alert, animated: true)
        } else {
            //SPTAppRemotePlayerAPI.pause()
            let alert = UIAlertController(title: "Playing", message: "Playing", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil))
            self.present(alert, animated: true)
        }**/
        let alert = UIAlertController(title: "Song Title:", message: playerState.track.name, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cool", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
    
}

