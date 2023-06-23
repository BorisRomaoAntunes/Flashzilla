//
//  Desabilitando a interacao.swift
//  Flashzilla
//
//  Created by Boris R on 23/06/23.
//

import SwiftUI

struct Desabilitando_a_interacao: View {
    var body: some View {
        VStack {
            VStack{
                Text("Hello")
                Spacer().frame(height: 100)
                Text("Word!")
            }
            .contentShape(Rectangle())
            .onTapGesture {
                print("VStack tapped")
            }
            ZStack{
                Rectangle()
                    .fill(.blue)
                    .frame(width: 300, height: 300)
                    .contentShape(Rectangle())
                    .onTapGesture {
                        print("Rectangle tapped")
                    }
                Circle()
                    .fill(.red)
                    .frame(width: 300, height: 300)
                    .contentShape(Rectangle()) // estabelecendo area de toque em formato diferente de circulo.
                    .onTapGesture {
                        print("Circle tapped")
                    }
                   // .allowsHitTesting(false) // desconsidera o toque no caso do Circulo mesmo que este o usuario toque dentro do mesmo
                
            }
        }
    }
}

struct Desabilitando_a_interacao_Previews: PreviewProvider {
    static var previews: some View {
        Desabilitando_a_interacao()
    }
}
