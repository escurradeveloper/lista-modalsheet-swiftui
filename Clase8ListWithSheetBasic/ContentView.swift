//
//  ContentView.swift
//  Clase8ListWithSheetBasic
//
//  Created by Escurra Colquis on 7/10/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showModal = false
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(ArrayListPerson().listPerson) {
                        person in
                        HStack(alignment: .center, spacing: 5) {
                            Image(systemName: "person")
                            Text(person.name)
                            Text(person.lastName)
                                .bold()
                        }
                        .onTapGesture {
                            self.showModal.toggle()
                        }
                    }
                }
                .sheet(isPresented: $showModal) {
                    Text("Vista Pantalla")
                        .bold()
                        .presentationDetents([.medium, .large])
                }
            }
            .navigationTitle("Lista")
        }
    }
}

#Preview {
    ContentView()
}
