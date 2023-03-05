//
//  DetailView.swift
//  oishiramen
//
//  Created by T on 18/02/23.
//

import SwiftUI

struct DetailView: View {
    @EnvironmentObject var baseData: BaseViewModel
    var animation: Namespace.ID
    @State var bowlSize = "S"
    
    var body: some View {
        if let ramen = baseData.currentRamen, baseData.showDetail {
            VStack (spacing: 15) {
                HStack {
                    // chevron left
                    Button {
                        withAnimation {
                            baseData.showDetail = false
                        }
                    } label: {
                        Image("chevron")
                            .renderingMode(.template)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 25, height: 25)
                            .padding(15)
                            .background(Color("gray-detail"))
                            .cornerRadius(20)
                        
                    }
                    Spacer()
                    Button {
                        
                    } label: {
                        Image("option")
                            .renderingMode(.template)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 25, height: 25)
                            .padding(15)
                            .background(Color("gray-detail"))
                            .cornerRadius(20)
                        
                    }
                    
                    // option
                }.padding(.horizontal)
                ZStack { // Menu Detail
                    Rectangle()
                        .cornerRadius(70)
                        .frame(height:700)
                        .offset(y:150)
                        .foregroundColor(Color("gray-detail").opacity(0.45))
                    
                    VStack {
                        Image(ramen.ramenImage)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 310, height: 310)
                            .matchedGeometryEffect(id: ramen.ramenImage, in: animation)
                            .frame(height: getScreenBounds().height / 3)
                        ZStack { // Plus button
                            Rectangle()
                                .frame(width: 120, height: 50)
                                .cornerRadius(30)
                            HStack {
                                Button {
                                    
                                } label : {
                                    Image("subtract")
                                }.padding(.trailing, 8)
                                Text("1")
                                
                                Button {
                                    
                                } label : {
                                    Image("add")
                                    
                                }.padding(.leading, 8)
                                
                            }.foregroundColor(Color.black)
                                .font(.system(size: 20, weight: .bold))
                                .frame(maxWidth: .infinity)
                            
                        }.padding(.top, 30)
                            .padding(.bottom, 15)
                        // Ramen Name
                        Text(ramen.ramenName)
                            .foregroundColor(Color.white)
                            .font(.system(size: 40, weight: .heavy))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Spacer()
                            .frame(height: 15)
                        HStack {
                            Text("⭐")
                            Text(ramen.ramenRatingNum)
                            Text("🐖")
                            Text("pork, lard")
                            Text("🍵")
                            Text("free ocha")
                        }.foregroundColor(Color.gray.opacity(0.6 ))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.system(size: 16))
                        Spacer()
                            .frame(height: 15)
                        Text(ramen.ramenDesc)
                            .foregroundColor(Color.white)
                            .frame(alignment: .leading)
                            .font(.callout)
                            .lineSpacing(7)
                            .padding(.top, 10)
                        HStack {
                            Text("Bowl Size")
                                .foregroundColor(Color.gray.opacity(0.8))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .font(.callout)
                            
                            ForEach(["S", "M", "L"], id:\.self) { bowlSize in
                                Button {
                                    self.bowlSize = bowlSize
                                } label: {
                                    Text(bowlSize)
                                        .font(.system(size: 20, weight: .semibold))
                                        .foregroundColor(self.bowlSize == bowlSize ? Color("orange") : Color.gray.opacity(0.2))
                                        .padding(.vertical, 15)
                                        .padding(.horizontal)
                                        .background(
                                            RoundedRectangle(cornerRadius: 7)
                                                .fill(Color.gray.opacity(0.3))
                                                .opacity(self.bowlSize == bowlSize ? 0.2 : 0)
                                        )
                                    
                                }
                            }
                            
                        }.padding(.vertical, 5)
                    }.padding(.horizontal, 40)
                        .offset(y:-20)
                }
                HStack {
                    VStack {
                        Text("Total")
                        Text("$9")
                            .font(.system(size: 32, weight: .bold))
                            .foregroundColor(.white)
                    }
                    .foregroundColor(Color.gray.opacity(0.8))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.callout)
                    
                    Button {
                        
                    }label: {
                        Text("Add to Cart")
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(.black)
                            .background(
                                RoundedRectangle(cornerRadius: 50)
                                    .frame(width: 225, height: 55)
                                
                            )
                            .padding(.vertical, 10)
                            .padding(.horizontal)
                            .offset(x: -40)
                        
                    }
                }.frame(maxWidth: .infinity)
                    .padding(.horizontal, 40)
            }.padding(.vertical)
                .frame(maxWidth: .infinity , maxHeight: .infinity, alignment: .top)
                .background(Color.black)
                .transition(.move(edge: .bottom))
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        // DetailView()
    }
}

extension View {
    func getScreenBounds()->CGRect {
        return UIScreen.main.bounds
    }
}
