//
//  ContentView.swift
//  slots-ui
//
//  Created by Domanik Johnson on 2/28/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var credits: Int = 0
    @State var apple: Int = 0
    @State var cherry: Int = 1
    @State var star: Int = 2

    
    
    var body: some View {
        VStack {
            Spacer()
            Text("Slots UI!")
                .font(.largeTitle)
                .foregroundColor(Color.black)
                .fontWeight(.bold)
                 .padding()
            Spacer()
            Text("Credits: \(credits)")
                .font(.title2)
            Spacer()
            HStack{
                Spacer()
                Image("apple").resizable().scaledToFit()
                Spacer()
                Image("cherry").resizable().scaledToFit()
                Spacer()
                Image("star").resizable().scaledToFit()
                Spacer()
            }
            Spacer()
            Button("Spin"){
                
            }.font(.title)
                .foregroundColor(Color.white)
                .padding(.horizontal, 25.0)
            .background(Color.pink)
            .cornerRadius(40)


            Spacer()
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
