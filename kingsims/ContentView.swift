//
//  ContentView.swift
//  kingsims
//
//  Created by Marknel Pogi on 1/5/23.
//

import SwiftUI

struct ContentView: View {
    init() {
        let navBarAppearance = UINavigationBarAppearance()
        navBarAppearance.configureWithOpaqueBackground()
        navBarAppearance.backgroundColor = UIColor.init(red: 255/255, green: 196/255, blue: 20/255, alpha: 1)
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.black]
        UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
        UINavigationBar.appearance().standardAppearance = navBarAppearance
        UINavigationBar.appearance().compactAppearance = navBarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
    
        let tabBarApperance = UITabBarAppearance()
        tabBarApperance.configureWithOpaqueBackground()
        tabBarApperance.backgroundColor = UIColor.blue
        UITabBar.appearance().scrollEdgeAppearance = tabBarApperance
        UITabBar.appearance().standardAppearance = tabBarApperance
    }
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 255/255, green: 196/255, blue: 20/255).ignoresSafeArea()
                
                ScrollView {
                    /*
                     ZStack(alignment: .leading) {
                     Rectangle()
                     .fill(Color(hex: 0x6E49D8))
                     .frame(height: 220)
                     
                     VStack(alignment: .trailing) {
                     Text("Hi Wisteria, this is your last use")
                     .font(.custom("SF Pro", fixedSize: 22))
                     .foregroundColor(.white)
                     .frame(width: 220)
                     .padding(EdgeInsets(top: 30, leading: 14, bottom: 0, trailing: 0))
                     Spacer()
                     }
                     }
                     */
                    
                    VStack {
                        Image("placeholder")
                            .overlay(
                                RoundedRectangle(cornerRadius: 32)
                                    .stroke(Color(hex: 0x00D6D9), lineWidth: 2)
                            )
                            .frame(width: 72, height: 72)
                            
                    }.padding(EdgeInsets(top: 31, leading: 0, bottom: 0, trailing: 0))
                    
                    VStack {
                        Text("Travel Like A")
                            .font(.custom("Poppins-Regular", size: 39))
                            .foregroundColor(.black)
                        
                        Text("KING & QUEEN")
                            .font(.custom("Poppins-Regular", size: 39))
                            .foregroundColor(Color(hex: 0xAE0707, alpha: 1))
                    }
                    
                    DataPlanContainerView()
                    
                    HStack {
                        Text("TSELECT FROM OUR AVAILABLE\nDESTINATIONS BELOW")
                            .font(.custom("Poppins-Regular", size: 12))
                            .foregroundColor(.black)
                            .padding(EdgeInsets(top: 20, leading: 15, bottom: 0, trailing: 0))
                        Spacer()
                    }
                    
                    Carousel()
                }
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

