//
//  Category+CoreDataProperties.swift
//  
//
//  Created by Jorge Sanmartin on 7/11/16.
//
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Category {

    @NSManaged var id: String?
    @NSManaged var term: String?
    @NSManaged var label: String?
    @NSManaged var scheme: String?
    @NSManaged var item: Entry?

}
