//
//  ContentView.swift
//  TestAudium
//
//  Created by Elsavira T on 17/09/24.
//

import SwiftUI

struct ContentView: View {
    
    var museumName = ["Select Museum", "Kapal Lawd Museum"]
    @State private var selectedMuseum = "Select Museum"
    @State private var selectedSession = false
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Session")) {
                    HStack {
                        Text("Museum")
                        Spacer()
                        Picker("", selection: $selectedMuseum) {
                            ForEach(museumName, id: \.self) {
                                Text($0)
                            }
                        }
                        .pickerStyle(.automatic)
                    }
                    
                    HStack {
                        Toggle(isOn: $selectedSession) {
                            Text("Session")
                        }
                    }
                }
                
                if selectedSession {
                    Section(header: Text("Debug Info")) {
                        HStack {
                            Text("Nearest Beacon")
                        }
                        HStack {
                            Text("Beacon ID")
                        }
                        HStack {
                            Text("Current Audio")
                        }
                        HStack {
                            Text("Duration")
                        }
                    }
                }
            }
            .navigationTitle("Audium.")
        }
    }
}

#Preview {
    ContentView()
}
