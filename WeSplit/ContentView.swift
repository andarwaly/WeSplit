//
//  ContentView.swift
//  WeSplit
//
//  Created by Muhammad Dzaky on 09/09/24.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    
    let tipPercentages = [0, 10, 15, 20, 25]
    
    var body: some View {
        NavigationStack{
            Form{
                Section{
                    TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                        .keyboardType(.decimalPad)
                    Picker("Number of People", selection: $numberOfPeople){
                        ForEach(2..<21){
                            Text("\($0) people")
                        }
                    }.pickerStyle(.navigationLink)
                }
                Section(header: Text("Summary")){
                    Text(checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
            }
            .navigationTitle("WeSplit")
        }
    }
}

#Preview {
    ContentView()
}
