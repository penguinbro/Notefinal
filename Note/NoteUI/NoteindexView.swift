//
//  NoteindexView.swift
//  Note
//
//  Created by Daniel Leung on 4/1/2023.
//

import SwiftUI


struct NoteindexView: View {
    @EnvironmentObject var imageData : ImageData
    
    var body: some View {
        List {
            ForEach(imageData.imageNote) { note in
                NavigationLink(destination: NoteContentView(note: note)) {
                    HStack {
                        Image(uiImage: UIImage(data: note.image)!)
                            .resizable()
                            .frame(width: 50, height: 50, alignment: .center)
                        
                        VStack(alignment: .leading) {
                            Text(note.title)
                                .lineLimit(2)
                        }
                    }
                }
            }
        }
    }
}

struct Noteindex_Previews: PreviewProvider {
    static var previews: some View {
        NoteindexView()
            .environmentObject(ImageData())
    }
}
