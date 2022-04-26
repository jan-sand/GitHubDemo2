//
//  ContentView.swift
//  GitHubDemo
//
//  Created by JBS on 22.04.22.
//

import SwiftUI
struct MemorizeView: View {
    var emojis = ["1","4","5","2","7","1","1","1","3","1","4","4","7","7"]
@State    var emojiCount = 3
    var body: some View {
        VStack{
            ScrollView {
            LazyVGrid(columns: [GridItem(),GridItem(),GridItem()]){
                ForEach (emojis[0..<emojiCount], id: \.self) { emojis in
                    CardView(content: emojis).aspectRatio(2/3, contentMode: .fit)
                }
            }
            Spacer()
            HStack{
            add
            Spacer()
            remove
            }.padding(.horizontal)
                    
        }
        }

    }
    var add: some View {
        Button {
            if emojiCount < 24 {
                emojiCount += 1}
        } label: {
            Image(systemName: "plus.circle")
        }
        
    }
    var remove: some View {
        Button {
            if emojiCount > 1 {
                emojiCount -= 1}
        } label: {
            Image(systemName: "minus.circle")
        }
        
    }
struct CardView: View {
    var content: String
    @State var isFaceUp: Bool=true
        var body: some View {

            ZStack{
                let shape=RoundedRectangle(cornerRadius: 20)
                .stroke(lineWidth: 2)
            if isFaceUp {
                shape
                Text(content)
                .font(.footnote)
                .fontWeight(.heavy)
                .foregroundColor(Color.blue)
                .padding(20)}
            else {
               shape
                    .fill().foregroundColor(.white)}
            }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MemorizeView()
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
    }
}
