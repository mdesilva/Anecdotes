//
//  ContentView.swift
//  Anecdotes
//
//  Created by Manuja DeSilva on 12/16/20.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var viewModel: AnecdotesViewModel
    
    var body: some View {
        NavigationView {
                List {
                    ForEach(viewModel.anecdotes) { anecdote in
                        NavigationLink(anecdote.title, destination: AnecdoteView(anecdote: anecdote))
                    }
                }
                .navigationBarTitle("Anecdotes")
                .navigationBarItems(trailing: Button(action: { viewModel.createEmptyAnecdote() }, label: {
                    Text("New")
                }))
        }
    }
}
