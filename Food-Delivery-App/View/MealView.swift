//
//  MealView.swift
//  Food-Delivery-App
//
//  Created by Suraphel Birhane on 8/31/24.
//

import SwiftUI

struct Meal: View {
    @State private var quantity = 1
    @State var meal : Card
    @State var heart = "heart.fill"
    var placeHolder = "A harmonious blend of fresh ingredients and bold flavors, this dish combines vibrant textures and tastes to create a delightful and satisfying experience. It’s both comforting and exciting, offering a well-balanced bite in every mouthful."
    var body: some View {
        VStack {
            ScrollView(.vertical, showsIndicators: false, content: {
                GeometryReader{reader in
                    Image(meal.image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        
                        .offset(y: -reader.frame(in: .global).minY)
                        // going to add parallax effect....
                        .frame(width: UIScreen.main.bounds.width, height:  reader.frame(in: .global).minY + 300)
                    
                }
                .frame(height: 280)
                
                VStack(alignment: .leading,spacing: 15){
                    
                    Text(meal.title)
                        .font(.system(size: 35, weight: .bold))
                    
                    
                    HStack(spacing: 10){
                        
                        ForEach(1..<5){_ in
                            
                            Image(systemName: "star.fill")
                                .foregroundColor(.yellow)
                        }
                    }
                    
                    HStack {
                        Text(meal.descrip)
                            .font(.caption)
                            .foregroundColor(.gray)
                            .padding(.top,5)
                        Spacer()
                        
                        Button(action: {
                            withAnimation(.spring(dampingFraction: 0.5)) {
                                heart = "heart"
                            }
                        }, label: {
                            Image(systemName: heart)
                                .font(.largeTitle)
                                .foregroundColor(.red)
                            
                        })
                        .padding(.all, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    }
                    
                    
                    Text("Description")
                        .font(.system(size: 25, weight: .bold))
                    
                    Text(placeHolder)
                        .padding(.top, 10)
                        .fixedSize(horizontal: false, vertical: true)
                    
                    
                    HStack {
                        Text("Quantity - (x\(quantity))")
                            .font(.title3)
                            .bold()
                        Spacer()
                        Stepper("",
                                onIncrement: {
                                    quantity+=1
                                }, onDecrement: {
                                    quantity-=1
                                })
                            .foregroundColor(.black)
                            .background(Color.white)
                            .frame(width: 100)
                    }.padding(.top, 10)
                    
                    HStack {
                        Text("Price ")
                            .font(.title3)
                            .bold()
                        Spacer()
                        Text("$\(quantity * 2).00")
                            .font(.title2)
                            .bold()
                    }
                    .padding(.top, 10)
                }
                .padding(.top, 25)
                .padding(.horizontal)
                .background(Color.white)
                .cornerRadius(20)
                .offset(y: -35)
            })
            
            
            Spacer()
            
            HStack{
                Spacer()
                Button(action: {}, label: {
                    Text("Add to Cart")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 100)
                        .background(Color.purple)
                        .cornerRadius(10)
                    
                })
                Spacer()
            }
            .padding(.all, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            
            .edgesIgnoringSafeArea(.all)
            .background(Color.white.edgesIgnoringSafeArea(.all))
        }
    }
    
}

struct Meal_Previews: PreviewProvider {
    static var previews: some View {
        Meal(meal: TrendingCard[0])
    }
}

