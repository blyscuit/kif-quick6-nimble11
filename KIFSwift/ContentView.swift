//
//  ContentView.swift
//  KIFSwift
//
//  Created by Bliss on 16/1/23.
//

import SwiftUI

struct ContentView: View {

    @State var isShowingDone = false
    @State var isShowingHello = false

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
                .opacity(isShowingHello ? 1.0 : 0.0)
            Button("Show") {
                DispatchQueue.main.async {
                    self.isShowingDone = true
                }
            }
        }
        .alert("Done", isPresented: $isShowingDone, actions: {
            Button("Close") {
                isShowingDone = false
            }
        }, message: {
            Text("OK")
        })
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                withAnimation {
                    self.isShowingHello = true
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
