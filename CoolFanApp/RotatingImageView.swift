//
//  RotatingImageView.swift
//  CoolFanApp
//
//  Created by Pieter Yoshua Natanael on 01/09/23.
//

import SwiftUI

struct RotatingImageView: View {
    @Binding var isRotating: Bool
    
    var body: some View {
        Image("Image")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .rotationEffect(isRotating ? .degrees(360) : .degrees(0))
            .animation(isRotating ? Animation.linear(duration: 0.7).repeatForever(autoreverses: false) : .default)
            

    }
}


/*
import SwiftUI

struct RotatingImageView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct RotatingImageView_Previews: PreviewProvider {
    static var previews: some View {
        RotatingImageView()
    }
}
*/
