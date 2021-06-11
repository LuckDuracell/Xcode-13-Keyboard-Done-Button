//
//  ContentView.swift
//  Shared
//
//  Created by Luke Drushell on 6/10/21.
//

import SwiftUI

struct ContentView: View {
    @FocusState var showKeyboard: Bool
    @State var input = ""
    @State var input2 = ""
    var body: some View {
        NavigationView {
            VStack {
                
                TextField("Type here", text: $input)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.decimalPad)
                    .focused($showKeyboard)
                    .padding()
                
                HStack {
                    Text("Input 1: \(input)")
                        .font(.title)
                        .padding()
                    Spacer()
                }
                
                TextField("Type here", text: $input2)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.decimalPad)
                    .focused($showKeyboard)
                    .padding()
                
                HStack {
                    Text("Input 2: \(input2)")
                        .font(.title)
                        .padding()
                    Spacer()
                }
                
            }
            .navigationTitle("Done Button Test")
            .toolbar(content: {
                ToolbarItem(placement: .keyboard, content: {
                    HStack() {
                        Spacer()
                        Button {
                            showKeyboard.toggle()
                        } label: {
                            Text("Done")
                                .multilineTextAlignment(.trailing)
                        }
                    }
                })
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

