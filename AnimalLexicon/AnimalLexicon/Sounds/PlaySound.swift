//
//  PlaySound.swift
//  AnimalLexicon
//
//  Created by August Backhaus on 03/03/2022.
//

import Foundation
import AVFoundation

var player: AVAudioPlayer!

func playSound(key:String){
    
    // Create url for the sound file
    let url = Bundle.main.url(forResource: key, withExtension: "mp3")
    
    // If the url is empty, do nothing
    guard url != nil else {
        return
    }
    
    do{
        player = try AVAudioPlayer(contentsOf: url!)
        player?.play()
    }
    catch{
        print(error)
        
    }
}
