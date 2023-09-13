//
//  PhotoID+CoreDataProperties.swift
//  Splashpaper
//
//  Created by Jared on 14/06/2023.
//
//

import Foundation
import CoreData


extension PhotoID {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PhotoID> {
        return NSFetchRequest<PhotoID>(entityName: "PhotoID")
    }

    @NSManaged public var id: String?

}

extension PhotoID : Identifiable {

}
