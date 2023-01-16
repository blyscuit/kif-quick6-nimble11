//
//  ContentView.swift
//  KIFSwift
//
//  Created by Bliss on 16/1/23.
//

import SwiftUI

struct ContentView: View {

    @State var isShowingDone = false

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            if isShowingDone {
                Text("Done")
            }
        }
        .padding()
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                self.isShowingDone = true
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
