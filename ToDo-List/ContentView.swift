//
//  ContentView.swift
//  ToDo-List
//
//  Created by Y3SUNG on 2022/06/15.
//

import SwiftUI

enum Priority: String, Identifiable, CaseIterable {
    var id: UUID {
        return UUID()
    }
    case low = "Low"
    case medium = "Medium"
    case high = "High"
}
extension Priority {
    var title: String {
        switch self {
            case .low:
                return "Low"
            case .medium:
                return "Medium"
            case .high:
                return "High"
        }
    }
}
struct ContentView: View {
    @State private var title: String = ""
    var body: some View {
        NavigationView {
            VStack {
                TextField("Enter title", text: $title)
                    .textFieldStyle(.roundedBorder)
            }
            .padding()
            .navigationTitle("All Tasks")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
