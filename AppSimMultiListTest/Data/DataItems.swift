//
//  DataItems.swift
//  AppSimMultiListTest
//
//  Created by Derek Fitzer on 5/8/25.
//




import Foundation

struct Item{
    var id = UUID()
    var name: String
    var itemID: Int  // this is the user location #
    var itemDescription: String
    var itemImage: String
    var found = false
}


// Do NOT add items to this file. Place instances of items in your data folder.



var itemfdf404 = Item(name: "Block of Code - Hello World", itemID: 404, itemDescription: "Everyone needs some help taking those first steps when coding, This block is usualy their first", itemImage: "fdf404", found: false)

var itemfdfDucky = Item(name: "Rubber Ducky", itemID: 404, itemDescription: "This is the famous rubber duck described in the Pragmatic Programmer by David Thomas.", itemImage: "fdfDucky", found: false)

var item1001 = Item(name: "Golden Ducky Conspiracy", itemID: 1001, itemDescription: "This is the famous rubber duck described in the Pragmatic Programmer by David Thomas. You have solved a conspiracy!", itemImage: "fdfGoldenDuck", found: false)

var item0472 = Item(name: "App&Sim Flyer", itemID: 472, itemDescription: "The flyer contains valuable information about the App&Sim program.", itemImage: "fdfAppSimFlyer", found: false)

var itemfdfArcade = Item(name: "Mini Game Achievement", itemID: 911, itemDescription: "You recieved the Mini Game Award", itemImage: "fdfArcade")

var itemfdfBinary = Item(name: "Binary Achievement", itemID: 500, itemDescription: "You Solved the Binary Puzzle!", itemImage: "fdfBinaryCoin")
