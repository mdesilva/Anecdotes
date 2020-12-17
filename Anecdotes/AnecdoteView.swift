//
//  AnecdoteView.swift
//  Anecdotes
//
//  Created by Manuja DeSilva on 12/16/20.
//

import SwiftUI

struct AnecdoteView: View {
    @EnvironmentObject var viewModel: AnecdotesViewModel
    @State var anecdote: Anecdote
    
    var body: some View {
        VStack {
            TextField(anecdote.title, text: $anecdote.title).font(.largeTitle).padding(.leading, 5)
                .onChange(
                    of: anecdote.title,
                    perform: { value in
                        save()
                    })
            TextEditor(text: $anecdote.content)
                .onChange(
                    of: anecdote.content,
                    perform: { value in
                        save()
                })
        }
        .padding(10)
    }
    
    private func save() {
        viewModel.modifyAnecdote(anecdote: anecdote)
    }
}
