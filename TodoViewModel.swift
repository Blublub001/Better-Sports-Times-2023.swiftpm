//
//  TodoViewModel.swift
//  Better Sports Times 2023
//
//  Created by David Popowski on 11/7/23.
//

import Foundation
import FirebaseFirestore
import SwiftUI

struct Todo: Codable, Identifiable {
    var id: String = UUID().uuidString
    var name: String?
}

class TodoViewModel: ObservableObject {

    @Published var todos = [Todo]()

    private var db = Firestore.firestore()

    func getAllData() {
        db.collection("todos").addSnapshotListener { (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else {
                print("No documents")
                return
            }

            self.todos = documents.map { (queryDocumentSnapshot) -> Todo in
                let data = queryDocumentSnapshot.data()
                let name = data["name"] as? String ?? ""
                return Todo(name: name)
            }
        }
    }

    func addNewData(name: String) {
           do {
               _ = try db.collection("todos").addDocument(data: ["name": name])
           }
           catch {
               print(error.localizedDescription)
           }
       }
}
