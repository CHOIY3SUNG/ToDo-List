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
 
