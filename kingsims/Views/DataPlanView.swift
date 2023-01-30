//
//  DataPlanView.swift
//  kingsims
//
//  Created by Marknel Pogi on 1/9/23.
//

import SwiftUI

struct DataPlanView: View {
    var body: some View {
        HStack(spacing: 0) {
            ZStack {
                
                Rectangle()
                    .fill(Color(hex: 0xF6F6F6))
                    .frame(width: 38, height: 38)
                    .cornerRadius(7)
                
                Image("up-down")
                    .scaledToFill()
            }
            
            VStack(alignment: .leading, spacing: 0) {
                Text("Data 12 GB")
                    .font(.custom("SF Pro", fixedSize: 14))
                    .foregroundColor(Color(hex: 0x222225))
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 7, trailing: 0))
                
                Text("Weekly Plan")
                    .font(.custom("SF Pro", fixedSize: 12))
                    .foregroundColor(Color(hex: 0xA3A0AB))
            }
            .padding(EdgeInsets(top: 0, leading: 14, bottom: 0, trailing: 0))
            
            Spacer()
        }
        .padding(EdgeInsets(top: 30, leading: 0, bottom: 0, trailing: 0))
    }
}

struct DataPlanView_Previews: PreviewProvider {
    static var previews: some View {
        DataPlanView()
    }
}
