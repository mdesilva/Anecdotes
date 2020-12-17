//
//  ViewModel.swift
//  Anecdotes
//
//  Created by Manuja DeSilva on 12/16/20.
//

import Foundation

class AnecdotesViewModel: ObservableObject {
    
    @Published private var model: AnecdotesModel = AnecdotesModel()
    
    var anecdotes: [Anecdote] { model.anecdotes }
    
    // Intents
    func createEmptyAnecdote() -> Anecdote {
        model.createBlankAnecdote()
    }

    func modifyAnecdote(anecdote: Anecdote) {
        model.modifyAnecdote(anecdote: anecdote)
    }

}
