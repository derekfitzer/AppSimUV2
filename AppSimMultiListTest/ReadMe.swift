//
//  ReadMe.swift
//  AppSimMultiListTest
//
//  Created by Derek Fitzer on 5/12/25.
//

import Foundation

//  THE CAMPUS V0.9

// A collaborative portfolio story by App&Sim at the South-Westen Career Academy

// New For Version 0.9

// You will add the same data folder to DataStudent

// NEW: Your location and items will be added the the AppState: ObservableObject in DataStructs.
// Place your location at the end of the pLocations array
// Place you item(s) at the end of the at the end of the pItems array

// If you have a custom location replace the randomArchive view with your custom view in the views array







// How to make a location in the Campus:

// Look at fdf2Data for a sample of a location with a claimable item.

// videos on the process.




// IMPORTANT: Make sure all instances of structs are placed in your folder in student data. The folder should be named you initials.

// IMPORTANT: Make sure all file and variable names follow project conventions. actions, locations, items and conspiracy instances shoud start with your three initials.  Image and sound files should be named starting with your initials and and an identifier.

// 1. Find your location id inside DataActions
//      var act0100 = Action(type: .loadLocation, text: "Dean Fitzer", goLocation: 410)
//     ----> in this case my id is 410

// 2. Create your ITBlocks - these will be the "pages in your location"
//      name blocks initials and page. Samples for pages 4-7 are shown below
//      image - Square aspect ration image. save the images as initials and identifier in a folder in           assets
//      text - the text displayed below the image
//      actions - not required for every block! - this array will load custom actions to the location           list. This can be used to load custom views and to claim items.
//      sound - a sound file to play when the block loads



        // var fdf4 = PTBlock(image: "fdfEngine", text: "Our ship's power reserves are failing, and with each passing day, this digital phantom grows stronger, feeding off our remaining energy. The students are both terrified and fascinated - I've never seen such high attendance in our virtual reality studies classes.", sound: "fdfReactor")

        //var fdf5 = PTBlock(image: "fdfBotCrew", text: "Yesterday, during a routine system check, the entity spoke directly to me through the ship's communication array. It called itself Echo and claimed tobe searching for its original programmers, following a trail of digital breadcrumbs across the universe. The haunting part isn't its existence - it's the possibility that it might be telling the truth.")

        // var fdf7 = PTBlock(image: "dean2", text: "If you've read this far you may want to look for the ghosts in the machine. You can use this key to gain access to the Archive. Be careful some of those ghosts are very frightening", actions: [act0411], sound: "fdfTada" )

// 3. Create the actions needed for your location.

// The three required actions will be next, back to lobby and claim.

// The back to lobby locaions are listed below:

//var act1000 = Action(type: .loadLocation, text: "Commons North Lobby", goLocation: 1000)
//var act2000 = Action(type: .loadLocation, text: "Commons South Lobby", goLocation: 2000)
//var act3000 = Action(type: .loadLocation, text: "Dorms 2nd Floor Lobby", goLocation: 3000)
//var act4000 = Action(type: .loadLocation, text: "Dorms 3rd Floor Lobby", goLocation: 4000)
//var act5000 = Action(type: .loadLocation, text: "Dorms 4th Floor Lobby", goLocation: 5000)
//var act6000 = Action(type: .loadLocation, text: "Jerimiah Hall Floor 2 Lobby", goLocation: 6000)
//var act7000 = Action(type: .loadLocation, text: "Jerimiah Hall Floor 3 Lobby", goLocation: 7000)

// 4. Create a location in you student data folder and add the blocks and actions.

//   var loc0410 = Location(mapID: 410, locationName: "Dean Fitzer's Office", blocks: [fdf1,fdf2,fdf3,fdf4,fdf5,fdf6,fdf7], actions: [actNext, act7000], sound: "fdfDeanMusic" )

// mapID - you locationID, used for most actions and items in your location
// locationName - The title of your room
// blocks - this is an array of the picture text blocks that will be displayed in your location
// actions - this is an array of the actions you can perform in your location. See actions below.

// 5. Test your location in the program.



