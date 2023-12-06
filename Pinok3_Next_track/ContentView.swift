//
//  ContentView.swift
//  Pinok3_Next_track
//
//  Created by Иван Ткачев on 05/12/2023.
//

import SwiftUI








struct ContentView: View {

    @State private var animationPlay2 = 1.0
    @State private var animationPlay3 = 0.0
    @State private var offset = 0.0
    
    var body: some View {
        Button {
            withAnimation(.spring(bounce: 0.4).repeatCount(0), completionCriteria: .logicallyComplete) {
                offset += 24
                animationPlay2 -= 1
                animationPlay3 += 1
                        } completion: {
                            offset = 0
                            animationPlay3 = 0
                            animationPlay2 = 1
                        }
            } label: {
                HStack(spacing: 0) {
                Image(systemName: "play.fill")
                        .offset(x: 15)
                        .offset(x: offset)
                Image(systemName: "play.fill")
                        .offset(x: 9)
                        .scaleEffect(animationPlay2)
                Image(systemName: "play.fill")
                        .offset(x: 15)
                        .scaleEffect(animationPlay3)
                        .offset(x: -60)
            }
        }
            .font(.largeTitle)
    }
}

#Preview {
    ContentView()
}
