//
//  Hurdles110m.swift
//  Better Sports Times 2023
//
//  Created by Alexander L. Martinez on 10/26/23.
//

import Foundation
import SwiftUI

struct playerAndTime: Hashable{
    var name: String
    var time: Double
}

struct Hurdles110m: View {
    var runners = [
        playerAndTime(name: "John Brown", time: 15.54),
        playerAndTime(name: "Philip Kirk", time: 20.61)
    ]
    
    var body: some View {
        VStack{
            Text("Hurdles110m")
                .font(.title)
                .foregroundColor(.mint)
            List{
                ForEach(runners, id:\.self) { runners in
                    HStack{
                            Text("\(runners.name)")
                                .font(.title3)
                        Rectangle()
                            .foregroundColor(.white)
                        
                            Text("\(String(format: "%.2f", Double(runners.time )))")
                                .font(.title3)
                        
                    }
                }
            }
            
            Button(action:{
                    print("one must imagine a player being added")
                }) {
                    Text("add player")
                        .font(.title)
                }
                
            
        }
    }
}
struct Hurdles110m_Previews: PreviewProvider {
    static var previews: some View {
        Hurdles110m()
    }
}
