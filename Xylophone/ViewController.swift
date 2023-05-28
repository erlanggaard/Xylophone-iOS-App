//
//  ViewController.swift
//  Xylophone
//
//  Created by Erlangga Ardiansyah
// 
//

import UIKit
import AVFoundation
//import UIView

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func playSound(key: String) {
        let url = Bundle.main.url(forResource: key, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        let keyPressed = sender.currentTitle!
        playSound(key: keyPressed)
        
        sender.alpha = 0.7
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1 ) {
            sender.alpha = 1.0
        }
    }
}
