//
//  ContentView.swift
//  modalSwifUi
//
//  Created by Sebastian Muller on 27/08/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showModal: Bool = false
    @State private var selectedFlag : String = ""
    let flags = ["🏴󠁧󠁢󠁳󠁣󠁴󠁿","🇮🇴","🇶🇦","🇹🇩","🇧🇹"]
    
    var body: some View {
        
        List {
            
            ForEach(flags, id: \.self) { flag in
                
                HStack {
                    Text(flag).font(.custom("Arial", size: 100))
                }.onTapGesture {
                    self.selectedFlag = flag
                    self.showModal.toggle()
                }
                
            }
            
            
        }.sheet(isPresented: $showModal){
            Text(selectedFlag)
                .font(.custom("Arial", size: 200))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
