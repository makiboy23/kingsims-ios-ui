//
//  DataStatusView.swift
//  kingsims
//
//  Created by Marknel Pogi on 1/9/23.
//

import SwiftUI

struct DataStatusView: View {
    var body: some View {
        HStack(spacing: 0) {
            ZStack {
                Rectangle()
                    .fill(Color(hex: 0xF5F1FF))
                    .frame(width: 58, height: 30)
                    .cornerRadius(7)
                
                Text("In Use")
                    .font(.custom("SF Pro", fixedSize: 12))
                    .foregroundColor(Color(hex: 0x6E49D8))
            }
            
            ZStack {
                Rectangle()
                    .fill(Color(hex: 0xECF7F7))
                    .frame(width: 58, height: 30)
                    .cornerRadius(7)
                
                Text("Internet")
                    .font(.custom("SF Pro", fixedSize: 12))
                    .foregroundColor(Color(hex: 0x0DD8DF))
            }
            .padding(EdgeInsets(top: 0, leading: 14, bottom: 0, trailing: 0))
            
            Spacer()
        }
    }
}

struct DataStatusView_Previews: PreviewProvider {
    static var previews: some View {
        DataStatusView()
    }
}
