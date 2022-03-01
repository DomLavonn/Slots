//
//  ContentView.swift
//  slots-ui
//
//  Created by Domanik Johnson on 2/28/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var credits: Int = 0
    @State var img1: String = "slot1"
    @State var img2: String = "slot2"
    @State var img3: String = "slot3"

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
                Image(img1).resizable().scaledToFit()
                Spacer()
                Image(img2).resizable().scaledToFit()
                Spacer()
                Image(img3).resizable().scaledToFit()
                Spacer()
            }
            Spacer()
            Button("Spin"){
                swapImages()
            }.font(.title)
                .foregroundColor(Color.white)
                .padding(.horizontal, 25.0)
            .background(Color.pink)
            .cornerRadius(40)


            Spacer()
        }
       
    }
    
    func swapImages() {
        let rand1 = Int.random(in: 1...3)
        let rand2 = Int.random(in: 1...3)
        let rand3 = Int.random(in: 1...3)
        
        
        img1 = "slot\(rand1)"
        img2 = "slot\(rand2)"
        img3 = "slot\(rand3)"
        
        if (img1 == img2 && img2 == img3) {
            credits += 30
        } else if(img1 == img2 || img1 == img3 || img2 == img3) {
            credits += 15
        }else {
            credits -= 15
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
