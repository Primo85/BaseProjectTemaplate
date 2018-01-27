//
//  AppPlayer.swift
//  neuralNetwork
//
//  Created by Przemyslaw Biskup on 07/01/2018.
//  Copyright © 2018 Przemyslaw Biskup. All rights reserved.
//

import AVFoundation

class AppSounds {
    
    static var didAppear: AVAudioPlayer = {
        return createAP(name: "didAppear", type: .wav)
    }()
    
    static var touchUpInside: AVAudioPlayer = {
        return createAP(name: "touchUpInside", type: .wav)
    }()
    
    static var hide: AVAudioPlayer = {
        return createAP(name: "hide", type: .wav)
    }()
    
    static var show: AVAudioPlayer = {
        return createAP(name: "show", type: .wav)
    }()
    
    
    enum SoundType: String {
        case wav
        case mp3
    }
    
    private static func createAP(name: String, type: SoundType) -> AVAudioPlayer {
        var player: AVAudioPlayer!
        let soundFile = Bundle.main.path(forResource: name, ofType: type.rawValue)
        do {
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundFile!))
        } catch {
            print("error - something is wrong with \(name).\(type.rawValue)")
        }
        return player
    }
}
