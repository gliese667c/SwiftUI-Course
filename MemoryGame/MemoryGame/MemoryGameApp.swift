//
//  MemoryGameApp.swift
//  MemoryGame
//
//  Created by Leslie Liu on 2020-09-26.
//

import SwiftUI

@main
struct StanEmojiGameApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: EmojiMemoryGame())
        }
    }
}

