//
//  PDPFacebookApp.swift
//  PDPFacebook
//
//  Created by Bekhruz Hakmirzaev on 29/11/22.
//

import SwiftUI

@main
struct PDPFacebookApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
