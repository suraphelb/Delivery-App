//
//  LocationView.swift
//  Food-Delivery-App
//
//  Created by Suraphel Birhane on 8/31/24.
//

import SwiftUI

struct Location: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("location")
                    .resizable()
                    .scaledToFit()
                
                Text("Hi there! We're glad you're here.")
                    .font(.title)
                    .bold()
                
                Text("Select your location to discover the best restaurants nearby.")
                    .font(.title3)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                    .padding(.all, 20)
                Spacer()
                
                NavigationLink(
                    destination: NavBar().navigationBarBackButtonHidden(true).navigationBarHidden(true),
                    
                    label: {
                        HStack {
                            Image(systemName: "location.fill")
                                .foregroundColor(Color.white)
                            
                            Text("Use current location")
                                .bold()
                                .foregroundColor(Color.white)
                        }
                        .frame(width: 300, height: 50, alignment: .center)
                        .border(Color.purple, width: 3)
                        .cornerRadius(5)
                        .background(Color.purple)
                        .shadow(color: Color.purple.opacity(0.3), radius: 5, x: 0, y: 2)
                        .clipShape(RoundedRectangle(cornerRadius: 30)) // Rounded corners
                    })
                
                Text("Select Manually")
                    .bold()
                    .underline()
                    .foregroundColor(.gray)
                    .padding(.top, 80)
            } //end of VStack
        } //end of NavigationView
    }
}

struct Location_Previews: PreviewProvider {
    static var previews: some View {
        Location()
    }
}
