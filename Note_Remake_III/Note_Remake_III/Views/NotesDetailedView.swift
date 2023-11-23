//
//  NoteDetailedView.swift
//  Note_Remake_III
//
//  Created by Giuseppe Gargiulo on 21/11/23.
//

import SwiftUI

struct NotesDetailedView: View {
    
    var note: Note
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Text("First Tab Content")
                .tabItem {
                    Image(systemName: "checklist")
                }
            
            Text("Second Tab Content")
                .tabItem {
                    Image(systemName: "camera")
                }
            
            Text("Third Tab Content")
                .tabItem {
                    Image(systemName: "pencil.tip.crop.circle")
                }
        
        Text("Fourth Tab Content")
            .tabItem {
                Image(systemName: "square.and.pencil")
            }
        }
        .tint(Color.yellow)
    }
}
    

#Preview {
    NotesDetailedView(note: Note(title: "Test", description: "Test", folder: "Test"))
}

//Questa cosa non l'ho capita. Perché bisogna mettere "note: Note" con tutti i parametri?
//Devo aggiungere gli elementi in alto a destra e la tab bar in basso
