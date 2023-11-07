//
//  TrackScreen.swift
//  Better Sports Times 2023
//
//  Created by David Popowski on 10/26/23.
//

import SwiftUI

var arrayOfTrackEvents: Array = [
//Hurdles110m(),
//Hurdles300m(),
//JumpHigh(),
//JumpLong(),
//JumpTriple(),
//PoleVault(),
Sprint100m()
//Sprint200m(),
//Sprint400m(),
//Sprint800m(),
//Sprint1600m(),
//Sprint3200m(),
//ThrowDiscus(),
//ThrowShotput()
] as [Any]

var arrayOfTrackEventsNames: Array = [
"110m Hurdles",
"300m Hurdles",
"High Jump",
"Long Jump",
"Triple Jump",
"Pole Vault",
"100m Sprint",
"200m Sprint",
"400m Sprint",
"800m Run",
"1600m Run",
"3200m Run",
"Discus Throw",
"Shotput Throw",


] as [Any]


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
