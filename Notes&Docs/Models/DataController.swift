//
//  DataController.swift
//  Notes&Docs
//
//  Created by Aadi Anand on 2/11/22.
//

import SwiftUI
import CoreData

class DataController {
    public static let container = NSPersistentCloudKitContainer(name: "Notes&Docs")
    public static var context: NSManagedObjectContext = DataController.container.viewContext
    public static func save() { try! DataController.context.save() }
}