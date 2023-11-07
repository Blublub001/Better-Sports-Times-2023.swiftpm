import SwiftUI
import FirebaseStorage
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth



let db = Firestore.firestore()

let storage = Storage.storage()
let storageRef = storage.reference()

// Points to "images"
let imagesRef = storageRef.child("images")

// Points to "images/space.jpg"
// Note that you can use variables to create child values
let fileName = "space.jpg"
let spaceRef = imagesRef.child(fileName)

// File path is "images/space.jpg"
let path = spaceRef.fullPath

// File name is "space.jpg"
let name = spaceRef.name

// Points to "images"
let images = spaceRef.parent()



@main
struct MyApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
        
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
