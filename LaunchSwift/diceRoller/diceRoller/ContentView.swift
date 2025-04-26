//
//  ContentView.swift
//  diceRoller
//
//  Created by Daoud Mirza on 4/26/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var numberOfDice: Int = 1
    @State var diceValues: [Int] = [1]

    var body: some View {
        VStack {
            // display text to canvas
            Text("Dice Game")
                .font(.largeTitle.monospaced())
                .bold()
                .padding(20)
            
            
            HStack{
                Text("Total Count: \(numberOfDice)")
                    .font(.headline.monospaced())
                    .bold()
                
            }
            
            
            // Display things horizontally
            HStack {
                ForEach(1...numberOfDice, id: \.description) { _ in
                    DiceView()
                }
            }
            
            HStack{
                withAnimation{
                    Button("Add Dice", systemImage: "plus.circle.fill") {
                        numberOfDice += 1
                        count += numberOfPips
                    }
                }
                .disabled(numberOfDice == 5)
                .padding()
                .background(Color.green)
                .foregroundStyle(.white)
                .cornerRadius(40)
                .padding()
                
                withAnimation{
                    Button("Remove Dice", systemImage: "minus.circle.fill") {
                        numberOfDice -= 1
                    }
                }
                .disabled(numberOfDice == 1)
                .padding()
                .background(Color.red)
                .foregroundStyle(.white)
                .cornerRadius(40)
                .padding()
            }
            .labelStyle(.iconOnly)
        }
        
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgroundColorApp)
        .tint(.white)
        .foregroundStyle(.white)
        
    }
}

#Preview {
    ContentView()
}
