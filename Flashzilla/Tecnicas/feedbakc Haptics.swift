//
//  feedbakc Haptics.swift
//  Flashzilla
//
//  Created by Boris R on 23/06/23.
//

import SwiftUI
import CoreHaptics

struct feedbakc_Haptics: View {
    @State private var engine: CHHapticEngine?
    
    var body: some View {
        Text("Hello, Word!")
            .onTapGesture(perform: simpleSuccess)
    }
    func prepareHaptics(){
        guard CHHapticEngine.capabilitiesForHardware().supportsHaptics else { return }
        
        do {
            engine = try CHHapticEngine()
            try engine?.start()
        } catch {
            print ("There was an error crating the engine: \(error.localizedDescription)")
        }
    }
    func simpleSuccess(){
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(.success)
        print("haptics")
    }
}

struct feedbakc_Haptics_Previews: PreviewProvider {
    static var previews: some View {
        feedbakc_Haptics()
    }
}
