//
//  SwiftUIView 3.swift
//  
//
//  Created by David Popowski on 10/26/23.
//

import SwiftUI

struct Free50: View {
    var swimmers = [
        playerAndTime(name: "John Brown", time: 15.54),
        playerAndTime(name: "Philip Kirk", time: 20.61)
    ]
    
    var body: some View {
        VStack{
            Text("Hurdles110m")
                .font(.title)
                .foregroundColor(.mint)
            List{
                ForEach(swimmers, id:\.self) { swimmers in
                    HStack{
                        Text("\(swimmers.name)")
                            .font(.title3)
                        Rectangle()
                            .foregroundColor(.white)
                        
                        Text("\(String(format: "%.2f", Double(swimmers.time )))")
                            .font(.title3)
                        
                    }
                }
            }
            
            NavigationStack{
                NavigationLink{
                    addSwimmer()
                }label: {
                    Text("Add Player")
                        .font(.title)
                }
            }
        }
    }
}

struct Free50_preview: PreviewProvider {
    static var previews: some View {
        Free50()
    }
}
