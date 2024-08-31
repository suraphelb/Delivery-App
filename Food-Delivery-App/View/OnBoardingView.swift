//
//  OnBoardingView.swift
//  Food-Delivery-App
//
//  Created by Suraphel Birhane on 8/31/24.
//

import SwiftUI
import UIKit

struct OnBoarding: View {

    @State var showSheetView = false
    
    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .purple
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.black.withAlphaComponent(0.2)
        }
    var body: some View {
        NavigationView {
            pages()
        }.sheet(isPresented: $showSheetView) {
            Location()
        }.animation(.none)
    }
    
}



struct OnBoarding_Previews: PreviewProvider {
    static var previews: some View {
        OnBoarding()
    }
}


struct pages: View {
    var body: some View {
        VStack {
            
                TabView {
                    ForEach(Data) { page in
                        GeometryReader { g in
                            VStack {
                                Image(page.image)
                                    .resizable()
                                    .scaledToFit()
                                Text(page.title)
                                    .font(.title).bold()
                                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 20)
                                Text(page.descrip)
                                    .multilineTextAlignment(.center)
                                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            }
                            .opacity(Double(g.frame(in : . global).minX)/200+1)
                        }
                    }
                }
                .edgesIgnoringSafeArea(.top)
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            
            NavigationLink(
                destination: Location().navigationBarBackButtonHidden(true).navigationBarHidden(true),
                label: {
                    Text("Start")
                        .font(.headline)
                        .frame(width: 200, height: 40, alignment: .center)
                        .foregroundColor(.white)
                        .background(Color.purple)
                        .cornerRadius(10)
                })
            Spacer()
            
        }
        
        .navigationBarBackButtonHidden(true)
    }
}
