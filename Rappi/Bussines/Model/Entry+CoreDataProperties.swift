//
//  Entry+CoreDataProperties.swift
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

extension Entry {

    @NSManaged var name: String?
    @NSManaged var title: String?
    @NSManaged var thumbImage: String?
    @NSManaged var image: String?
    @NSManaged var descriptionEntry: String?
    @NSManaged var url: String?
    @NSManaged var price: String?
    @NSManaged var currency: String?
    @NSManaged var id: String?
    @NSManaged var category: Category?

}
