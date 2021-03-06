//
//  DataController.swift
//  Notes&Docs
//
//  Created by Aadi Anand on 2/11/22.
//

import SwiftUI
import CoreData

class DataController {
    public static let container = NSPersistentCloudKitContainer(name: "Harmony")
    public static var context: NSManagedObjectContext = DataController.container.viewContext
    public static func save() { do { try DataController.context.save() } catch { print(error.localizedDescription) } }
    @AppStorage("sortFoldersMethod") public static var sortFoldersMethod: SortMethod = .title
    @AppStorage("sortDocsMethod") public static var sortDocsMethod: SortMethod = .title
}
