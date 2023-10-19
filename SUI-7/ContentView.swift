//
//  ContentView.swift
//  SUI-7
//
//  Created by  Pavel Nepogodin on 17.10.23.
//

import SwiftUI

struct ContentView: View {
    @Namespace private var namespace
    @State private var isOpened = false
    
    var body: some View {
        if isOpened {
            VStack {
                HStack {
                    Button(action: buttonAction) {
                        Label("Back", systemImage: "arrowshape.left.fill")
                            .fontWeight(.semibold)
                            .matchedGeometryEffect(
                                id: "text",
                                in: namespace
                            )
                    }
                    .padding()
                    Spacer()
                }
                Spacer()
            }
            .background(.blue)
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .matchedGeometryEffect(
                id: "button",
                in: namespace
            )
            .frame(width: 250, height: 400)
        } else {
            VStack {
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Button(action: buttonAction) {
                        Text("Open")
                            .foregroundColor(.white)
                            .matchedGeometryEffect(
                                id: "text",
                                in: namespace
                            )
                            .padding()
                    }
                    .background (
                        RoundedRectangle(cornerRadius: 15)
                            .fill(.blue)
                            .matchedGeometryEffect(
                                id: "button",
                                in: namespace
                            )
                    )
                    .padding()
                    
                }
            }
        }
    }
    
    func buttonAction() {
        withAnimation(.easeInOut) {
            isOpened.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
