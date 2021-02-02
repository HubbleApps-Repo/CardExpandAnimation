//
//  AnimationApp.swift
//  Animation
//
//  Created by denzel banegas on 02/02/2021.
//

import SwiftUI

@main
struct AnimationApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
