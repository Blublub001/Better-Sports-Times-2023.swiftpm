//
//  SwimScreen.swift
//  Better Sports Times 2023
//
//  Created by Alexander L. Martinez on 10/26/23.
//

import SwiftUI



//@State var arrayOfSwimEventNames: Array = [
//"50 Free",
//"100 Back",
//"100 Breast",
//"100 Fly",
//"100 Free",
//"200 Free",
//"200 IM",
//"500 Free"
//] as [Any]


struct SwimScreen: View {
    @State private var navPath = NavigationPath()
    
    @State var arrayOfSwimEventNames: Array = [
    "50 Free",
    "100 Back",
    "100 Breast",
    "100 Fly",
    "100 Free",
    "200 Free",
    "200 IM",
    "500 Free"
    ]
    
    @State var arrayOfSwimEvents: Array = [
    Free50(),
    Back100(),
    Breast100(),
    Fly100(),
    Free100(),
    Free200(),
    IM200(),
    Free500()
    ] as [any View]

    
    var body: some View {
        NavigationStack() {
            NavigationLink{
                Free50()
            }label: {
                Text("\(arrayOfSwimEventNames[0])")
            }
            NavigationLink{
                Back100()
            }label: {
                Text("\(arrayOfSwimEventNames[1])")
            }
            NavigationLink{
                Breast100()
            }label: {
                Text("\(arrayOfSwimEventNames[2])")
            }
            NavigationLink{
                Fly100()
            }label: {
                Text("\(arrayOfSwimEventNames[3])")
            }
            NavigationLink{
                Free100()
            }label: {
                Text("\(arrayOfSwimEventNames[4])")
            }
            NavigationLink{
                Free200()
            }label: {
                Text("\(arrayOfSwimEventNames[5])")
            }
            NavigationLink{
                IM200()
            }label: {
                Text("\(arrayOfSwimEventNames[6])")
            }
            NavigationLink{
                Free500()
            }label: {
                Text("\(arrayOfSwimEventNames[7])")
            }
            
            //        NavigationStack(path: $navPath) {
            //            Button("Random Event") {
            //                navPath.append(Int.random(in: 1..<50))
            //            }
            //
            //            for i in arrayOfSwimEvents{
            //                NavigationLink{
            //                    i
            //                }
            //            }
            //
            ////            List(1..<50) { i in
            ////                NavigationLink(value: "Row \(i)") {
            ////                    Label("Row \(i)", systemImage: "\(i).circle")
            ////                }
            ////            }
            ////            .navigationDestination(for: Int.self) { i in
            ////                Text("Int Detail \(i)")
            ////            }
            ////            .navigationDestination(for: String.self) { i in
            ////                Text("String Detail \(i)")
            ////            }
            ////            .navigationTitle("Swim Events")
            //        }
        }
    }
}
