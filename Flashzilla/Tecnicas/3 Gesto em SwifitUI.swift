//
//  3 Gesto em SwifitUI.swift
//  Flashzilla
//
//  Created by Boris R on 23/06/23.
//

import SwiftUI

struct Gesto_SwifitUI: View {
    var body: some View {
        VStack{
                    VStack{
                        Text("Priorizando toque ")
                            .onTapGesture { // por padrã0 o Swuft da preferencia para visualização filha no caso "Text Tapped, se adicionar o .highPriorityGestures o swift priorizara a visualziacao pai"
                                print("Text tapped")
                            }
                    }
                    .highPriorityGesture( // fazendo o Swuft priorizar este toque
                        TapGesture()
                            .onEnded{ _ in
                                print("VStack tappped")
                            }
                    )
                    .padding(.bottom)
                    VStack {
                        Text ("acionado ao mesmo tempo")
                            .onTapGesture {
                                print("Text tapped")
                        }
                    }
                    .simultaneousGesture (
                            TapGesture()
                                .onEnded{ _ in
                                    print ("VStack tapped")
                                }
                    )

                }
    }
}

struct Gesto_SwifitUI_Previews: PreviewProvider {
    static var previews: some View {
        __Gesto_em_SwifitUI()
    }
}
