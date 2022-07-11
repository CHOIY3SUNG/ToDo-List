import SwiftUI

@main
struct ToDo_ListApp: App {
    
    let persistentContainer = CoreDataManeger.shared.persistenContainer
    
    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.managedObjectContext, persistentContainer.viewContext)
        }
    }
}
 
