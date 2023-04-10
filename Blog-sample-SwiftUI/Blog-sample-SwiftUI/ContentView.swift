//
//  ContentView.swift
//  Blog-sample-SwiftUI
//
//  Created by Nobuharu Kusama on 2023/03/01.
//

import SwiftUI

struct ContentView: View {

    @State private var show: Bool = false

    var body: some View {
        NavigationView {
            Button("Next Page") {
                self.show.toggle()
            }
            .sheet(isPresented: self.$show) {
                SampleSwiftUI()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
