//
//  4 Bool  Gesto em SwifitUI.swift
//  Flashzilla
//
//  Created by Boris R on 23/06/23.
//

import SwiftUI

struct Gesto_Boll_em_SwifitUI: View {
    
    // até onde o círculo foi arrastado
    @State private var offset = CGSize()
    
    // se está sendo arrastado ou não
    @State private var isDragging = false
    
    var body: some View {
        // um gesto de arrastar que atualiza o deslocamento e isDragging enquanto se move
                let dragGestures = DragGesture()
                    .onChanged { value in offset = value.translation }
                    .onEnded { _ in
                        withAnimation{
                            offset = .zero
                            isDragging = false
                        }
                    }
                // um gesto de pressão longa que permite isDragging
                let presseGesture = LongPressGesture()
                    .onEnded{ value in
                        withAnimation{
                            isDragging = true
                        }
                        print ("segura")
                    }
                // um gesto combinado que força o usuário a pressionar e arrastar
                let combined = presseGesture.sequenced(before: dragGestures)
                
                Circle()
                    .fill()
                    .frame(width: 64, height: 64)
                    .scaleEffect(isDragging ? 1.5 : 1) // se isDragging for true aumenta o tamanho da bolinha
                    .offset(offset)
                    .gesture(combined)
    }
}

struct Gesto_Boll_em_SwifitUI_Previews: PreviewProvider {
    static var previews: some View {
        Gesto_Boll_em_SwifitUI()
    }
}
