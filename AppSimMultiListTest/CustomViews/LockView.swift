//
//  LockView.swift
//  AppSimMultiListTest
//
//  Created by Derek Fitzer on 5/8/25.
//

import SwiftUI

struct LockView: View {
    @State var whatLock = 410
    @State var lockImage = "locked"
    @State var enterAlert = false
    @State var alertMessage = "You are trying to enter a locked area.\n\nThe Key to the Archives\n\n required to enter."
    @State var enterAlert2 = false
    @State var open = false
    
    
    // what items unlock?
    
    var body: some View {
        
        ZStack{
            
            Image(lockImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            VStack{
                if open {
                    NavigationLink {
                        ArchiveView()
                    } label: {
                        Text("ENTER THE ARCHIVE")
                            .padding()
                            .background(Color.red)
                            .foregroundStyle(Color.white)
                    }
                } else {
                    
                    Button {
                        
                        if let r = seachItem(item: whatLock, items: items) {
                            if items[r].found {
                                alertMessage = "You have unlocked the Archive!"
                                playSoundOneOff(sound: "unlock", type: "mp3")
                                enterAlert.toggle()
                                open.toggle()
                            } else {
                                playSoundOneOff(sound: "alarm", type: "mp3")
                                enterAlert2.toggle()
                            }
                        }
                    } label: {
                        Text("Unlock the Archive")
                            .padding()
                            .background(Color.white)
                        //                    }  .alert("Alert title", isPresented: $enterAlert2, actions: {
                        //
                        //                        }, message: {
                        //                            Text("Alert message")
                        //                        })
                        //
                        //                    }
                    }.alert("Alert", isPresented: $enterAlert, actions: {
                        
                    }, message: {
                        Text(alertMessage)
                    })
                }
                
            }.alert("Alert", isPresented: $enterAlert2, actions: {
                
            }, message: {
                Text(alertMessage)
            })
        }
        
        //    func checkUnlock(whatLocation: Int) -> Bool {
        //
        //    }
    }
}
    
    func seachItem(item: Int, items: [Item]) -> Int? {
        return items.firstIndex { $0.itemID == item }
    }


#Preview {
    LockView()
}
