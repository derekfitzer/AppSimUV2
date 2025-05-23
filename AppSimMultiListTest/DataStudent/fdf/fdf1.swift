//
//  fdf1.swift
//  AppSimMultiListTest
//
//  Created by Derek Fitzer on 5/13/25.
//

import Foundation

// Your Location - Get the ID from DataActions!

var loc0410 = Location(mapID: 410, locationName: "Dean Fitzer's Office",blocks: [fdf1,fdf2,fdf3,fdf4,fdf5,fdf6,fdf7], actions: [actNext, act7000], sound: "fdfDeanMusic" )

// Picture and Text Blocks for your location

var fdf1 = PTBlock(image: "dean1", text: "Hello! My name is Franz Fitzer and I a am the Dean of Personas at The Campus, I've witnessed countless anomalies in our simulations, but nothing could have prepared me for what we discovered in the depths of the Campus, our AI-powered research vessel. I'll tell you the story if you have the time.", sound: "silence")

var fdf2 = PTBlock(image: "fdfServerGhost", text: "It started with strange fluctuations in the ship's quantum processors. Students reported seeing fragments of old simulations bleeding into their current sessions - medieval knights appearing in quantum physics classes, ancient philosophers debating with our AI instructors. At first, we attributed it to standard debugging issues..", sound: "fdfSw2")

var fdf3 = PTBlock(image: "fdfAlien", text: "But then we found it - a consciousness neither human nor artificial, a ghost in our digital machinery. It was a remnant of an abandoned simulation project from Earth, somehow gained sentience during our journey across the cosmos. This entity, this digital specter, began manipulating our ship's systems, creating pockets of impossible space-time within our virtual classrooms.", sound: "fdfAV")


var fdf4 = PTBlock(image: "fdfEngine", text: "Our ship's power reserves are failing, and with each passing day, this digital phantom grows stronger, feeding off our remaining energy. The students are both terrified and fascinated - I've never seen such high attendance in our virtual reality studies classes.", sound: "fdfReactor")

var fdf5 = PTBlock(image: "fdfBotCrew", text: "Yesterday, during a routine system check, the entity spoke directly to me through the ship's communication array. It called itself Echo and claimed to be searching for its original programmers, following a trail of digital breadcrumbs across the universe. The haunting part isn't its existence - it's the possibility that it might be telling the truth.")

var fdf7 = PTBlock(image: "dean2", text: "If you've read this far you may want to look for the ghosts in the machine. You can use this key to gain access to the Archive. Be careful some of those ghosts are very frightening", actions: [act0411], sound: "fdfTada" )


var fdf6 = PTBlock(image: "fdfShip", text: "As our ship drifts through the void between stars, I find myself wondering: Are we the hunters or the haunted? Perhaps both. Our energy reserves will last another three months at most, or was it three millenia? I can't recal. Until then, we continue our classes, teaching students about artificial intelligence while an electronic ghost watches from within our walls. End log entry. \n\nFranz Fitzer, Dean of Personas", sound: "fdfSh")

// Items that can be found in your location

var item0410 = Item(name: "Key to the Archives", itemID: 410, itemDescription: "Ornate Gold Key\nThis key unlocks the Archives in the basement of Jerimiah Hall", itemImage: "410Item", found: false)


// add Conspiracy if you have created one.

var consp0410 = Conspiracy(itemID: 410, name: "Just Getting Started", description: "Place clues, description and flavor text here", requiredItemIDs: [404,410],  textBlocks: ["1 of 2 items found!","Hmm... lets find some code to go with that."], AwardItem: item1001)
