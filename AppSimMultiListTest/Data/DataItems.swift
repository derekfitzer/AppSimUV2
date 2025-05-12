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

// item location list
// 0 archive key


var items: [Item] = [item0410, items1, items2, items3, items4, items5, items5]

var item0410 = Item(name: "Key to the Archives", itemID: 410, itemDescription: "Ornate Gold Key", itemImage: "410Item", found: false)

var items1 = Item(name: "Key to the Archives", itemID: 411, itemDescription: "Ornate Gold Key", itemImage: "fdfItem")
var items2 = Item(name: "Key to the Archives", itemID: 421, itemDescription: "Ornate Gold Key", itemImage: "fdfItem")
var items3 = Item(name: "Key to the Archives", itemID: 412, itemDescription: "Ornate Gold Key", itemImage: "fdfItem")
var items4 = Item(name: "Key to the Archives", itemID: 413, itemDescription: "Ornate Gold Key", itemImage: "fdfItem")
var items5 = Item(name: "Key to the Archives", itemID: 414, itemDescription: "Ornate Gold Key", itemImage: "fdfItem")
var items6 = Item(name: "Key to the Archives", itemID: 415, itemDescription: "Ornate Gold Key", itemImage: "fdfItem")
