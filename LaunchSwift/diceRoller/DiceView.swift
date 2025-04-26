//
//  DiceView.swift
//  diceRoller
//
//  Created by Daoud Mirza on 4/26/25.
//

import SwiftUI

struct DiceView: View {
   
    @State var numberOfPips: Int = 1
       
    var body: some View{
        
        VStack {
            // shows an image
            Image(systemName: "die.face.\(numberOfPips).fill")
                .resizable()
                .frame(maxWidth:100, maxHeight:100)
                .aspectRatio(1, contentMode: .fit)
                .foregroundStyle(.black, .white)
                .padding(20)
            
            
            Button("Roll") {
                numberOfPips = Int.random(in: 1...6)
            }
            
            .padding()
            .background(Color.white)
            .foregroundStyle(.black)
            .cornerRadius(20)
        }
    }
}

#Preview {
    DiceView()
}
