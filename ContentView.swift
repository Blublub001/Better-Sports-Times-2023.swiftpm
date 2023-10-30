import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            NavigationStack{
                NavigationLink{
                    TrackScreen()
                }label: {
                    VStack{
                        Image(systemName: "folder")
                        Text("Track")
                    }
                }
                
                NavigationLink{
                    SwimScreen()
                }label: {
                    VStack{
                        Image(systemName: "gear")
                        Text("Swim")
                    }.padding(34)
                }
            }
        }
        
    }
}

struct ContentView_preview: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
