//
//  Model.swift
//  Anecdotes
//
//  Created by Manuja DeSilva on 12/16/20.
//  MODEL

import Foundation
import SwiftUI

struct AnecdotesModel {
    
    var anecdotes: Array<Anecdote> = [
        Anecdote(title: "Musings of a writer", content: "It started with a semicolon", id: 0),
        Anecdote(title: "December tides", content: "The snow starts and ceases infinitely", id: 1),
        Anecdote(title: "PC vs Mac", content: "The ever waging war", id: 2)
    ]
    
    mutating func createBlankAnecdote() -> Anecdote {
        let anecdote = Anecdote(id: UUID().hashValue)
        anecdotes.insert(anecdote, at: 0)
        return anecdote
    }
    
    //Modify the title and content of an anecdote object
    mutating func modifyAnecdote(anecdote: Anecdote) {
        let index = anecdotes.indexOf(element: anecdote)
        anecdotes[index!].title = anecdote.title
        anecdotes[index!].content = anecdote.content
    }
    
}

struct Anecdote: Identifiable {
    var title: String = "Untitled"
    var content: String = ""
    var id: Int
}



