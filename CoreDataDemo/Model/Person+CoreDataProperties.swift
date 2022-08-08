//
//  Person+CoreDataProperties.swift
//  CoreDataDemo
//
//  Created by CW on 02/08/22.
//
//

import Foundation
import CoreData


extension Person {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Person> {
        return NSFetchRequest<Person>(entityName: "Person")
    }
    // try not to modify
     @NSManaged public var name: String?
    @NSManaged public var gender: String?
    @NSManaged public var age: Int64

}

extension Person : Identifiable {

}
