//
//  ContentView.swift
//  BluetoothDemoTest1
//
//  Created by RND on 2021/2/3.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HomeView()
            .environmentObject(Store.shared)
            .onAppear{
                Store.shared.run()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
