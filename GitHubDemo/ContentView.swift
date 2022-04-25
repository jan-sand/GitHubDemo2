//
//  ContentView.swift
//  GitHubDemo
//
//  Created by JBS on 22.04.22.
//

import SwiftUI

struct MemorizeView: View {
    var body: some View {
        return ZStack(content:{
            RoundedRectangle(cornerRadius: 20).stroke(lineWidth: 2)
            Text("Hello, Ass!").font(.footnote).fontWeight(.heavy)           .foregroundColor(Color.red).padding(20)}
            )
        .padding(30) 
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MemorizeView()
    }
}
