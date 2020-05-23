//
//  SBViewModel.swift
//  Soundboard
//
//  Created by Benjamin Mecanovic on 23/05/2020.
//  Copyright © 2020 hydro1337x. All rights reserved.
//

import Foundation
import AVFoundation


class SBViewModel {
    
    // MARK: - Properties
    private var player = AVAudioPlayer()
    
    enum Sound: String {
        case mamic = "mamic.mp3"
        case zuckerberg = "zuckerberg.mp3"
        case musk = "musk.mp3"
    }
    
    // MARK: - Init
    init() {}
    
    // MARK: - Methods
    
    final func play(_ sound: Sound) {
        guard !player.isPlaying, let filePath = Bundle.main.path(forResource: sound.rawValue, ofType: nil) else { return }
        do {
            player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: filePath))
        } catch let error {
            print(error.localizedDescription)
        }
        player.play()
    }
    
}
