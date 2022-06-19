//
//  ToDo_ListApp.swift
//  ToDo-List
//
//  Created by Y3SUNG on 2022/06/15.
//

import SwiftUI

@main
struct ToDo_ListApp: App {
    
    let persistentContainer = CoreDataManeger.shared.persistenContainer
    
    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.managedObjectContext, per)
        }
    }
}
 
