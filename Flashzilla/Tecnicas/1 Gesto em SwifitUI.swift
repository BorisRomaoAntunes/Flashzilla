//
//  Gesto em SwifitUI.swift
//  Flashzilla
//
//  Created by Boris R on 23/06/23.
//

import SwiftUI

struct Gesto_em_SwifitUI: View {
    var body: some View {
        VStack{
            Text("Double tapped")
                .onTapGesture(count: 2) { // dois toque
                    print("Double tapped!")
                }
                .padding(.bottom)
            
            Text("one tapped")
                .onTapGesture { // um toque
                    print("simple tapped!")
                }
                .padding(.bottom)
            
            Text("long pressed")
                .onLongPressGesture {
                    print("Long pressed!")
                }
                .padding(.bottom)
            
            Text("long pressed with duration 2 seconds")
                .onLongPressGesture(minimumDuration: 2) {
                    print("Long pressed, after 2 seconds!")
                }
                .padding(.bottom)
            
            Text("with closed")
                .onLongPressGesture(minimumDuration: 2){
                    print("long pressed!")
                } onPressingChanged: { inProgress in
                    print("In progress: \(inProgress)!")
                }
                .padding(.bottom)
            
            
            Text("Context Menu")
                .contextMenu{
                    Button{
                        print("context menu")
                    } label: {
                        Label("Option context menur", systemImage: "")
                    }
                }
            
   
        }
    }
}

struct Gesto_em_SwifitUI_Previews: PreviewProvider {
    static var previews: some View {
        Gesto_em_SwifitUI()
    }
}
