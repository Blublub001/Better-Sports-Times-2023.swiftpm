//
//  SwiftUIView.swift
//  
//
//  Created by David Popowski on 11/7/23.
//

import SwiftUI

struct addSwimmer: View {
    @State var swimmyer = ""
    var body: some View {
        TextField("wwerwer", text: $swimmyer)
    }
}

struct addSwimmer_Previews: PreviewProvider {
    static var previews: some View {
        addSwimmer()
    }
}
