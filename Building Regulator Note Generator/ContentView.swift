//
//  ContentView.swift
//  Building Regulator Note Generator
//
//  Created by Mike Prior on 02/08/2022.
//

import SwiftUI

struct Statement {
    let id: UUID = UUID()
    var title: String = "Title goes here"
    var description: String = "Description goes here"
}

struct ContentView: View {
    @State private var showingSheet = false
    @State private var statement = Statement()
    
    var body: some View {
    
        NavigationView {
            List {
                    VStack(alignment: .leading) {
                        Text("\(statement.title)")
                        Text("\(statement.description)").font(.subheadline).foregroundColor(.gray)
                }
            }
            .navigationTitle("Title")
            .toolbar {
                Button {
                    showingSheet = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $showingSheet) {
                AddView(showingAddView: $showingSheet)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
