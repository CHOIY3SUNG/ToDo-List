//
//  CoreDataManeger.swift
//  ToDo-List
//
//  Created by Y3SUNG on 2022/06/15.
//

import Foundation
import CoreData

class CoreDataManeger {
    
    let persistenContainer: NSPersistentContainer
    static let shared: CoreDataManeger = CoreDataManeger()
    
    private init() {
        persistenContainer = NSPersistentContainer(name: "todo-data_model")
        persistenContainer.loadPersistentStores { description, error in
            if let error = error {
                fatalError("Unable to initialize COre Data \(error)")
            }
        }
    }
}
 
