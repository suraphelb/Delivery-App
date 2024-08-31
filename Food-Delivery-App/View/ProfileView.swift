//
//  ProfileView.swift
//  Food-Delivery-App
//
//  Created by Suraphel Birhane on 8/31/24.
//
import SwiftUI

struct ProfileView: View {
    var body: some View {
        ScrollView{
            
            ZStack {
                Color(.purple)
                    .frame(width: 600, height: 600)
                    .edgesIgnoringSafeArea(.all)
                    .cornerRadius(300)
                    .offset(x: -50, y: -350)
                Color(.purple)
                    .frame(width: 300, height: 300)
                    .edgesIgnoringSafeArea(.all)
                    .cornerRadius(300)
                    .offset(x: -100, y: -250)

                HStack {
                    Text("Profile")
                        .bold()
                        .font(.title)
                    Spacer()
                }
                .padding(.all, 20)
                .foregroundColor(.white)
                .frame(width: UIScreen.main.bounds.width)
                .padding(.top, -250)
            }
            
            HStack {
                Text("Order")
                    .bold()
                    .font(.title)
                Spacer()
                Text("Close")
                    .font(.title2)
            }
            .padding()
            
            Text("Work in progress")
                .bold()
                .font(.title)
                .foregroundColor(.purple) // Set the text color to purple

            Spacer()
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        CheckOut()
    }
}
