//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Matthew Fontenot on 9/23/20.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: EmojiMemoryGame())
        }
    }
}
