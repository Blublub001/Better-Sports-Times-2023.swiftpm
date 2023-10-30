//
//  TrackScreen.swift
//  Better Sports Times 2023
//
//  Created by David Popowski on 10/26/23.
//

import SwiftUI


struct TrackScreen: View {
    @State private var navPath = NavigationPath()

    var body: some View {
        NavigationStack(path: $navPath) {
//            Button("Random Event") {
//                navPath.append(Int.random(in: 1..<50))
//            }

            List(1..<50) { i in
                NavigationLink(value: "Row \(i)") {
                    Label("Row \(i)", systemImage: "\(i).circle")
                }
            }
            .navigationDestination(for: Int.self) { i in
                Text("Int Detail \(i)")
            }
            .navigationDestination(for: String.self) { i in
                Text("String Detail \(i)")
            }
            .navigationTitle("Track Events")
        }
    }
}

struct TrackScreen_Previews: PreviewProvider {
    static var previews: some View {
        TrackScreen()
    }
}
