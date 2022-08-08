//
//  DecodeStructure.swift
//  CoreDataDemo
//
//  Created by CW on 05/08/22.
//

import Foundation

struct DecodeStructure:Codable
{
    var success:Bool?
    var data:DataList?
}
struct DataList:Codable{
    var memes:[Memes]?
}
struct Memes:Codable{
    var id:String?
    var name:String?
    var url:String?
    var width:Int?
    var height:Int?
    var box_count:Int?
}
