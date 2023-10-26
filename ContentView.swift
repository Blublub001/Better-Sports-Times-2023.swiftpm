import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            NavigationStack{
                NavigationLink{
                    SwimScreen()
                }label: {
                    VStack{
                        Image(systemName: "gear")
                        Text("Swim")
                    }
                }}
            NavigationStack{
                NavigationLink{
                    TrackScreen()
                }label: {
                    VStack{
                        Image(systemName: "folder")
                        Text("Track")
                    }
                }}
        }
        
    }
}

struct ContentView_preview: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
