//
//  SwiftUIView.swift
//  
//
//  Created by David Popowski on 11/7/23.
//

import SwiftUI

struct addSwimmer: View {
    @State var swimmerName = ""
    @State var swimmerTime = ""
    var body: some View {
        VStack{
            TextField("Add swimmer here", text: $swimmerName)
                .frame(alignment: .center)
            TextField("Add time here", text: $swimmerTime)
                .frame(alignment: .center)
        
            Button {
                print("saving to database")
                
                
            } label: {
                ZStack{
                    Text("Done")
                }
            }

        }
    }
}

struct addSwimmer_Previews: PreviewProvider {
    static var previews: some View {
        addSwimmer()
    }
}
