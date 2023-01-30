//
//  DetailItemView.swift
//  kingsims
//
//  Created by Marknel Pogi on 1/20/23.
//

import SwiftUI

struct DetailItemView: View {
    let title: String
    
    var body: some View {
        VStack {
            HStack {
                Text("Explore")
                    .font(.custom("Poppins-Regular", size: 22))
                    .foregroundColor(.black)
                
                Text(title)
                    .font(.custom("Poppins-Regular", size: 22))
                    .foregroundColor(Color(hex: 0xAE0707, alpha: 1))
            }
            
            ZStack {
                Rectangle()
                    .fill(.white)
                    .frame(height: 194)
                    .cornerRadius(14)
                    .padding(EdgeInsets(top: 0, leading: 14, bottom: 0, trailing: 14))
                
                HStack(alignment: .top) {
                    
                    Image("image-details")
                           .frame(width: 145, height: 145)
                    
                    VStack(alignment: .leading) {
                        Text("Qatar Travel e-SIM - 10GB of\n4G Data - 15 Day Plan\nInstant Download")
                            .font(.custom("Poppins-Regular", size: 12))
                            .foregroundColor(.black)
                        
                        Text("AUD $54.99")
                            .font(.custom("Poppins-Regular", size: 17))
                            .foregroundColor(Color(hex: 0xAE0707, alpha: 1))
                            .padding(EdgeInsets(top: 5, leading: 0, bottom: 0, trailing: 0))
                    }
                    
                    Spacer()
                }
                .padding(EdgeInsets(top: 10, leading: 30, bottom: 10, trailing: 10))
            }
        }
        .padding(EdgeInsets(top: 20, leading: 0, bottom: 0, trailing: 0))
    }
}

struct DetailItemView_Previews: PreviewProvider {
    static var previews: some View {
        DetailItemView(title: "QATAR")
    }
}
