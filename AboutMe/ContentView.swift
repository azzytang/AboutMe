//
//  ContentView.swift
//  AboutMe
//
//  Created by Azalea Tang on 6/21/24.
//

import SwiftUI
struct ContentView: View {
    @State private var alertTriggered = false
    let newSwiftColor = UIColor(red: 255, green: 165, blue: 0, alpha: 0.0)

    var body: some View {
        
    

        ZStack {
            Color.purple
            
            VStack (spacing:20) {
                
                Text("about me:")
                Text("azalea tang")
                Text("16")
                if alertTriggered {
                    Image("squat")
                }
                Image("me")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200)
             
                HStack(spacing:40){
                    VStack(spacing:10) {
                        Text("favorites:")
                        Text("season - fall")
                        Text("food - steak")
                        Text("color - purple")
                        Text("subject - math")
                    }

                    VStack(spacing:10){
                        Text("hobbies:")
                        Button("weightlifting (click)") {
                            alertTriggered = !alertTriggered
                        }
                        .foregroundColor(.black)
                        
                        Text("biking")
                        Text("basketball")
                        Text("volleyball")
                        Text("coding")
                     
                    }
                }
                
            }
           
          
            
            
            
        }
       
    }
}

#Preview {
    ContentView()
}
