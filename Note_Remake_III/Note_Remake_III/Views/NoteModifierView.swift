//
//  NoteModifierView.swift
//  Note_Remake_III
//
//  Created by Giuseppe Gargiulo on 22/11/23.
//

import SwiftUI

struct NoteModifierView: View {
    //    @State var titleText: String
        @State var descriptionText: String
        
        var body: some View {

                TextEditor(text: $descriptionText)
                    .foregroundColor(.gray)
                    .padding(.horizontal)
            
        }
    }

    #Preview {
        NoteModifierView(descriptionText: "Description")
    }

