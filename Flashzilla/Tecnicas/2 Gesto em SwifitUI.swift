//
//  2 Gesto em SwifitUI.swift
//  Flashzilla
//
//  Created by Boris R on 23/06/23.
//

import SwiftUI

struct __Gesto_em_SwifitUI: View {
    @State private var currentAmount = 0.0
        @State private var finalAmount = 1.0
        
        @State private var currenteAmountAngle = Angle.zero
        @State private var finalAmountAngle =  Angle.zero
        
    var body: some View {
        VStack{
                    Text("Aumentando")
                        .scaleEffect(finalAmount + currentAmount)
                        .gesture(
                            MagnificationGesture()
                                .onChanged { amount in
                                    currentAmount = amount - 1
                                }
                                .onEnded { amount in
                                    finalAmount += currentAmount
                                    currentAmount = 0
                                }
                        )
                        .padding(.bottom)
                    
                    Text("Gernado")
                        .rotationEffect(currenteAmountAngle + finalAmountAngle)
                    
                        .gesture(
                            RotationGesture()
                                .onChanged { angle in
                                    currenteAmountAngle = angle
                                }
                                .onEnded{ angle in
                                    finalAmountAngle += currenteAmountAngle
                                    currenteAmountAngle = .zero
                                }
                        )
                }
    }
}

struct __Gesto_em_SwifitUI_Previews: PreviewProvider {
    static var previews: some View {
        __Gesto_em_SwifitUI()
    }
}
