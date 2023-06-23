//
//  Timer Start and Stop.swift
//  Flashzilla
//
//  Created by Boris R on 23/06/23.
//

import SwiftUI

struct Timer_Start_and_Stop: View {
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect() // montando o timer 
    @State private var counter = 1
    
    var body: some View {
        Text("Coisa Boa")
                   .onReceive(timer){ time in
                       if counter == 6 {
                           timer.upstream.connect().cancel() // parando a contagem do timer
                           print("Stop")
                       } else {
                           print ("\(counter) The Time is now \(time)")
                       }
                       counter += 1
                   }
               
    }
}

struct Timer_Start_and_Stop_Previews: PreviewProvider {
    static var previews: some View {
        Timer_Start_and_Stop()
    }
}
