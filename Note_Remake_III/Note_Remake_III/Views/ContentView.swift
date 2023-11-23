//
//  ContentView.swift
//  Note_Remake_III
//
//  Created by Giuseppe Gargiulo on 21/11/23.
//

import SwiftUI

struct ContentView: View {
    
    var noteinit = NoteViewModel()
    
    @State private var searchText = ""
    
    var body: some View {
        
        NavigationStack{
            
            List{
                
                Section{
                    
                    ForEach(noteinit.notes) {
                        note in
                        
                        NavigationLink{
                            
                            NotesDetailedView(note: note)
                        } label: {
                            
                            VStack(alignment: .leading){
                                Text(note.title)
                                    .font(.title2)
                                    .bold()
                                HStack{
                                    Text("Yesterday")
                                        .foregroundColor(.gray)
                                    Text(note.description)
                                        .fontWeight(.regular)
                                        .foregroundColor(.gray)
                                }
                                HStack{
                                    Image(systemName: "folder")
                                        .foregroundColor(.gray)
                                    Text(note.folder)
                                        .foregroundColor(.gray)
                                }
                            }
                        }
                        
                    }
                    
                    }header: {
                    Text("Yesterday")
                        
                        
                }
                .headerProminence(.increased)
                
                Section{
                    
                    ForEach(noteinit.notes) {
                        note in
                        
                        NavigationLink{
                            
                            NotesDetailedView(note: note)
                        } label: {
                            
                            VStack(alignment: .leading){
                                Text(note.title)
                                    .font(.title2)
                                    .bold()
                                HStack{
                                    Text("Yesterday")
                                        .foregroundColor(.gray)
                                    Text(note.description)
                                        .fontWeight(.regular)
                                        .foregroundColor(.gray)
                                }
                                HStack{
                                    Image(systemName: "folder")
                                        .foregroundColor(.gray)
                                    Text(note.folder)
                                        .foregroundColor(.gray)
                                }
                            }
                        }
                        
                    }
                    
                    }header: {
                    Text("Previous 7 Days")
                }
                .headerProminence(.increased)
            }
            
            .navigationTitle("All i Cloud")
            .toolbar {
                ToolbarItemGroup(placement: .bottomBar, content: {
                                Spacer()
                                Text("8 notes")
                                    .font(.footnote)
                                Spacer()
                                
                                NavigationLink(destination:{
                                    
                                }, label: {
                                    Image(systemName: "square.and.pencil")
                                    
                                    
                                })
                }
            )
            }
            .toolbar {
                ToolbarItemGroup(placement: .automatic, content: {
                                Spacer()
                                
                                NavigationLink(destination:{
                                    
                                }, label: {
                                    Image(systemName: "ellipsis.circle")
                                })
                }
            )
            }
        }
        .searchable(text: $searchText)
        .tint(Color.yellow)
        .accessibilityAddTraits(.isHeader)
    }
}

#Preview {
    ContentView()
}

/*1)devo aggiungere il secondo navigation title per la data
 2) devo capire come aggiungere la tab bar con il numero di note e il crea nuova nota /**/*/
